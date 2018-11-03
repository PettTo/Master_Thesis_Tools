package de.tu_bs.cs.isf.pett.linuxmodelgenerator.core;

public class LinuxModelGenerator {

	private static final String pathFM = "../Example/Linux_Models/Base_Models/fmList.txt";
	private static final String pathOut = "../Example/Linux_Models/Generated_Models/";
	private static final String basePath = "../Example/Linux_Models/Base_Models/";
	
	public static void main(String[] args) {
		FMBuilder builder; 
		if(args.length == 3) {
			builder = new FMBuilder(args[0],args[1],args[2]); 
		}
		else {
			builder = new FMBuilder(pathFM, pathOut, basePath);
		}
		builder.execute();
	}
	
	

}
