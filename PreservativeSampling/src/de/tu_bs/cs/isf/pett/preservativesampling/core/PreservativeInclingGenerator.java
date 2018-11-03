package de.tu_bs.cs.isf.pett.preservativesampling.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.prop4j.Node;
import org.prop4j.analyses.PairWiseConfigurationGenerator;
import org.prop4j.solver.SatInstance;

import de.ovgu.featureide.fm.core.base.FeatureUtils;
import de.ovgu.featureide.fm.core.editing.AdvancedNodeCreator;
import de.ovgu.featureide.fm.core.editing.AdvancedNodeCreator.CNFType;
import de.ovgu.featureide.fm.core.filter.AbstractFeatureFilter;
import de.ovgu.featureide.fm.core.functional.Functional;
import de.ovgu.featureide.fm.core.job.monitor.IMonitor;

public class PreservativeInclingGenerator{
	
	private IMonitor monitor = null; 
	private PreservativeHandler handler = null; 
	
	private PairWiseConfigurationGenerator pairGen = null; 
	private SatInstance satInstance = null;
	
	private boolean isAnalysisFinished = false; 
	/**
	 * @return the isAnalysisFinished
	 */
	public boolean isAnalysisFinished() {
		return isAnalysisFinished;
	}

	private boolean isReadcomplete = false;

	/**
	 * @return the isReadcomplete
	 */
	public boolean isReadcomplete() {
		return isReadcomplete;
	}

	public PreservativeInclingGenerator(IMonitor monitor, PreservativeHandler handler) {
		this.monitor = monitor; 
		this.handler = handler; 
	}
	
		public void constructGenerator(int maxSolutionCount, List<List<String>> confs) {
		
		final AdvancedNodeCreator advancedNodeCreator = new AdvancedNodeCreator(MyUtils.getFeatureModel(), new AbstractFeatureFilter());
		advancedNodeCreator.setCnfType(CNFType.Regular);
		advancedNodeCreator.setIncludeBooleanValues(false);

		final Node createNodes = advancedNodeCreator.createNodes();
		satInstance = new SatInstance(createNodes, Functional.toList(FeatureUtils.getConcreteFeatureNames(MyUtils.getFeatureModel())));
		
		pairGen = new PairWiseConfigurationGenerator(satInstance, maxSolutionCount);
		Collection<int[]> predefinedConfs = new ArrayList<>();  
		for(List<String> conf : confs) {
			int[] array = satInstance.convertToInt(conf);
			predefinedConfs.add(array); 
		}
		if(predefinedConfs.size() > 0) {
			pairGen.setPredefinedConfigurations(predefinedConfs);
		}
	}
	
	public void setAnalysisIsFinished() {
		isAnalysisFinished = true; 
	}
	
	public Thread getAnalyzeThread() {
		Thread analysisThread = new Thread() {
			@Override
			public void run() {
				super.run();
				try {
					pairGen.analyze(monitor);
				} catch (Exception e) {
					e.printStackTrace();
				}
				System.out.println("Analysis Finished");
				isAnalysisFinished = true;
			}
			
		}; 
		return analysisThread; 
	}
	
	public Thread getReaderThread() {
		Thread readerThread = new Thread() {
			@Override
			public void run() {
				super.run();
				try {
					while(true) {
						System.out.println(pairGen.q.size());
						generateConfiguration(satInstance.convertToString(pairGen.q.take().getModel())); 
						if(pairGen.q.size() == 0 && isAnalysisFinished) {
							break; 
						}
						Thread.sleep(100);
					}
					System.out.println("Queue pull finished");
					isReadcomplete = true; 
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			private void generateConfiguration(List<String> solution) {
					java.util.Collections.sort(solution);
					if(solution.isEmpty()) {
					}
					else {
						if(!isDuplicate(solution)) {
							handler.addToConfList(solution);
							handler.writeConf(solution, handler.getConfList().indexOf(solution));
						}
					}
			}
			
			private boolean isDuplicate(List<String> solution) {
				for(List<String> conf : handler.getConfList()) {
					java.util.Collections.sort(conf);
					if(conf.equals(solution)) {
						return true; 
					}
				}
				return false;
			}
		}; 
		return readerThread; 
	}
}
