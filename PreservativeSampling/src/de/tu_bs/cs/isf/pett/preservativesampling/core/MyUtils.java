package de.tu_bs.cs.isf.pett.preservativesampling.core;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import de.ovgu.featureide.fm.core.base.IFeature;
import de.ovgu.featureide.fm.core.base.IFeatureModel;
import de.ovgu.featureide.fm.core.configuration.Configuration;
import de.ovgu.featureide.fm.core.configuration.FeatureNotFoundException;
import de.ovgu.featureide.fm.core.configuration.Selection;
import de.ovgu.featureide.fm.core.io.manager.FeatureModelManager;
import de.ovgu.featureide.fm.core.io.manager.FileHandler;

public class MyUtils {
	
	private static IFeatureModel featureModel = null; 
	
	public static void setFeatueModel(Path fmPath) {
		FileHandler<IFeatureModel> fmHandler = FeatureModelManager.load(fmPath);
		IFeatureModel model = null; 
		if(fmHandler != null) {
			model = fmHandler.getObject();
		}
		featureModel = model; 
	}
	
	public static Configuration ListToConfig(List<String> list) {
		final Configuration configuration = new Configuration(featureModel, Configuration.PARAM_NONE);
		for (final String selection : list) {
			configuration.setManual(selection, Selection.SELECTED);
			
		} 
		return configuration; 
	}
	
	public static List<String> ConfToString(Configuration c){
		List<String> list = new ArrayList<>(); 
		for(IFeature sf : c.getSelectedFeatures()) {
			list.add(sf.getName()); 
		}
		return list; 
	}
	
	public static IFeatureModel getFeatureModel() {
		return featureModel; 
	}
	
	public static List<List<String>> getValidConf(List<List<String>> sample){
		List<List<String>> validConfs = new ArrayList<>();
		 
		for(List<String> c : sample) {
			try {
				Configuration conf = ListToConfig(c); 
				if(conf.isValid()) {
					List<String> featureList = ConfToString(conf);
					validConfs.add(featureList); 
				}
				else {
					System.out.println("Invalid Conf found");
				}
			}
			catch(FeatureNotFoundException fnfEx) {
				System.out.println("Tried to validate configuration against feature model. Failed because of Feature not found exception during validation");
				fnfEx.printStackTrace();
				continue; 
			}
			
		}
		return validConfs; 
	}

}
