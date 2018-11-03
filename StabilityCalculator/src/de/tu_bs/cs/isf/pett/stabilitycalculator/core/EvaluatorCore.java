package de.tu_bs.cs.isf.pett.stabilitycalculator.core;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import de.ovgu.featureide.fm.core.base.IFeature;
import de.ovgu.featureide.fm.core.base.IFeatureModel;
import de.ovgu.featureide.fm.core.configuration.Configuration;
import de.ovgu.featureide.fm.core.configuration.FeatureNotFoundException;
import de.ovgu.featureide.fm.core.configuration.Selection;
import de.ovgu.featureide.fm.core.io.manager.FeatureModelManager;
import de.ovgu.featureide.fm.core.io.manager.FileHandler;
import de.tu_bs.cs.isf.pett.stabilitycalculator.evaluator.FIMDC;
import de.tu_bs.cs.isf.pett.stabilitycalculator.evaluator.MSOC;
import de.tu_bs.cs.isf.pett.stabilitycalculator.evaluator.ROIC;

public class EvaluatorCore {

	private String pathFM_old;
	private String pathFM_new;
	private String pathSample_old;
	private String pathSample_new;
	private String csvPath; 
	
	private IFeatureModel FM_old; 
	private IFeatureModel FM_new; 
	
	private List<List<String>> sample_old = new ArrayList<>(); 
	private List<List<String>> sample_new = new ArrayList<>();
	
	private SampleReader sr = new SampleReader(); 
	private StatisticsWriter sw; 
	
	public EvaluatorCore(String basePath, String pathFM_old, String pathSample_old, String pathFM_new, String pathSample_new) {
		this.csvPath = basePath; 
		this.pathFM_old = pathFM_old;
		this.pathSample_old = pathSample_old;
		this.pathFM_new = pathFM_new;
		this.pathSample_new = pathSample_new;
		
		sw = new StatisticsWriter(); 
	}
	
	public void execut() {
		FM_old = loadFeatueModel(Paths.get(pathFM_old)); 
		FM_new = loadFeatueModel(Paths.get(pathFM_new));
		
		sample_old = getValidConf(sr.readSample(pathSample_old), FM_old); 
		sample_new = getValidConf(sr.readSample(pathSample_new), FM_new);
		
		System.out.println("### FM_old size " + FM_old.getNumberOfFeatures()); // + " // " + sample1.toString() + "###");
		System.out.println("### FM_new size " + FM_new.getNumberOfFeatures()); // + " // " + sample2.toString() + "###");
		
		ROIC roic = new ROIC(); 
		double roicResult = roic.analyze(FM_old, sample_old, FM_new, sample_new);  
		System.out.println("Result roic: " + roicResult);
		
		MSOC msoc = new MSOC();
		double msocResult = msoc.analyze(FM_old, sample_old, FM_new, sample_new); 
		System.out.println("Result msoc: " + msocResult ); 
		
		FIMDC fimdc = new FIMDC(); 
		double fimdcResult = fimdc.analyze(FM_old, sample_old, FM_new, sample_new); 
		System.out.println("Result fimdc: " + fimdcResult);
		
		Pattern p = Pattern.compile("model\\d*"); 
		Matcher m1 = p.matcher(pathFM_old); 
		m1.find();
		
		Matcher m2 = p.matcher(pathFM_new); 
		m2.find();
		
		String entryName = m1.group() + " to " + m2.group() + ";"; 
		String results = roicResult + ";" + msocResult + ";" + fimdcResult; 
		
		sw.writeStatistics(csvPath, entryName, results);
		
	}
	
	private IFeatureModel loadFeatueModel(Path fmPath) {
		FileHandler<IFeatureModel> fmHandler = FeatureModelManager.load(fmPath);
		if(fmHandler == null) {
			System.out.println("Problems while loading FeatureModel from Path: " + fmPath.toString());
			System.exit(0);
		}
		return fmHandler.getObject(); 
	}
	
	private Configuration ListToConfig(List<String> list, IFeatureModel fm) {
		final Configuration configuration = new Configuration(fm, Configuration.PARAM_NONE);
		for (final String selection : list) {
			configuration.setManual(selection, Selection.SELECTED);
			
		} 
		return configuration; 
	}
	
	private List<String> ConfToString(Configuration c){
		List<String> list = new ArrayList<>(); 
		for(IFeature sf : c.getSelectedFeatures()) {
			list.add(sf.getName()); 
		}
		return list; 
	}
	
	private List<List<String>> getValidConf(List<List<String>> sample, IFeatureModel fm){
		List<List<String>> validConfs = new ArrayList<>();
		 
		for(List<String> c : sample) {
			try {
				Configuration conf = ListToConfig(c, fm); 
				if(conf.isValid()) {
					List<String> featureList = ConfToString(conf);
					validConfs.add(featureList); 
				}
				else {
					System.out.println("Invalid Conf found");
				}
			}
			catch(FeatureNotFoundException fnfEx) {
				System.out.println("Feature not Found exception");
				continue; 
			}
			
		}
		return validConfs; 
	}
	
	
	

}
