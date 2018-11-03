package de.tu_bs.cs.isf.pett.stabilitycalculator.core;

public class StabilityCalculator {

	private static final String pathFM_old = "../Example/Graph_Library_Evolution/model00001.xml";
	private static final String pathFM_new = "../Example/Graph_Library_Evolution/model00002.xml";
	private static final String pathSample_old = "../Example/Samples/IncLing/products_model00001";
	private static final String pathSample_new = "../Example/Samples/IncLing/products_model00002";
	
	private static final String csvPath = "../Example/Stability_Results/gpl_example.csv"; 
	
	public static void main(String[] args) {
		if(args.length == 5) {
			new StabilityCalculator(args[0], args[1], args[2], args[3], args[4]); 
		}
		else {
			System.out.println("No suitable arguments provided for run. Provide the path to the base directory as single string");
			System.out.println("Order to privide arguments: csvPath, Model1, sample1, model2, sample2");
			new StabilityCalculator(csvPath, pathFM_old, pathSample_old, pathFM_new, pathSample_new); 
		}
	}
	
	public StabilityCalculator(String basePath, String pathFM1, String pathSample1, String pathFM2, String pathSample2) {
		EvaluatorCore handler = new EvaluatorCore(basePath, pathFM1, pathSample1, pathFM2, pathSample2); 
		handler.execut();
	}

}
