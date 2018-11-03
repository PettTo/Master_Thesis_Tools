package de.tu.bs.cs.isf.pett.preservativesampling.core;

import de.ovgu.featureide.fm.core.job.monitor.ConsoleMonitor;
import de.ovgu.featureide.fm.core.job.monitor.IMonitor;

public class PreservativeSampling {

	private final int maxSolutionCount = Integer.MAX_VALUE; 
	
	private static final String baseFMPath = "../Example/Graph_Library_Evolution/featureModels.txt"; 
	private static final String baseSamplePath = "../Example/Samples/PreservativeSampling/";
	private static final String basePath = "../Example/Graph_Library_Evolution/"; 
	
	public static void main(String[] args) {
		if(args.length == 3) {
			new PreservativeSampling(args[0], args[1], args[2]); 
		}
		else {
			System.out.println("No suitable arguments provided for run. Provide the path to the base directory as single string");
			new PreservativeSampling(basePath, baseFMPath, baseSamplePath); 
		}
	}
	
	public PreservativeSampling(String basePath, String baseFMPath, String baseSamplePath) {
		IMonitor monitor = new ConsoleMonitor();
		PreservativeHandler handler = new PreservativeHandler(basePath, baseFMPath, baseSamplePath, maxSolutionCount, monitor); 
		handler.execut();

	}
}
