package de.tu_bs.cs.isf.pett.linuxmodelgenerator.core;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.prop4j.Node;

import de.ovgu.featureide.fm.core.base.IConstraint;
import de.ovgu.featureide.fm.core.base.IFeatureModel;
import de.ovgu.featureide.fm.core.editing.FeatureModelObfuscator;
import de.ovgu.featureide.fm.core.job.monitor.ConsoleMonitor;
import de.ovgu.featureide.fm.core.job.monitor.IMonitor;

public class FMBuilder {
	
	private String FMPath; 
	private String outputPath; 
	private String basePath;
	private int randomIndex; 
	
	List<String> prevFeatureList = new ArrayList<String>();
	
	List<String> featureModelList = new ArrayList<String>(); 
	
	// initial max size of the FeatureList
	private int maxFeatures = 700; 
	// Defines how many percent of features from the real product line should be used 
	private double TotalFeatureUsagePercent = 0.015; 
	// Defines how many features from the previous search are reused
	private final String salt = "buildNewLinuxModels";

	public FMBuilder() {
	}
	
	public FMBuilder(String fmPath, String outputPath, String basePath) {
		this.FMPath = fmPath; 
		this.outputPath = outputPath;
		this.basePath = basePath; 
	}
	
	public void execute() {
		featureModelList = getFeatureModels(FMPath); 
		int index = 1; 
		constructRandomModel(index);
		
		for(String path : featureModelList) {
				IFeatureModel fm = constructFeatureModel(basePath + path, index);
				prevFeatureList.clear();
				prevFeatureList.addAll(fm.getFeatureOrderList());
				prevFeatureList.remove(FMWriter.getRootIdentifier()); 
			index++;
		}
	}
	
	private void constructRandomModel(int index) {
		randomIndex = ThreadLocalRandom.current().nextInt(1, featureModelList.size()-1);
		System.out.println("Random Index: " + randomIndex);
		String path = basePath + featureModelList.get(randomIndex); 
		IFeatureModel fm = constructFeatureModel(path, randomIndex); 
		prevFeatureList.clear();
		prevFeatureList.addAll(fm.getFeatureOrderList());
		prevFeatureList.remove(FMWriter.getRootIdentifier());
	}
	
	private List<String> getFeatureModels(String path){
		List<String> fms = new ArrayList<>(); 
		try {
			fms = Files.readAllLines(Paths.get(path));
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return fms; 
	}
	
	private IFeatureModel constructFeatureModel(String inPath, int index) {
		FMReader reader = new FMReader(); 
		List<String> featureNameList = new ArrayList<String>();
		List<Node> chosenConstraints = new ArrayList<Node>(); 
		String outPath = pathCreator(index); 
		IFeatureModel featureModel = reader.readFM(inPath);
		prevFeatureList = getStillValidFeatures(prevFeatureList, featureModel.getFeatureOrderList());
		
		// get constraint List from FM and create a modifiable copy 
		List<IConstraint> OrignalConstraintList = featureModel.getConstraints(); 
		List<IConstraint> constraintList = new ArrayList<IConstraint>(); 
		constraintList.addAll(OrignalConstraintList); 
		
		// get random constraint from constraint list
		if(index == randomIndex) {
			maxFeatures = (int) (featureModel.getNumberOfFeatures() * TotalFeatureUsagePercent);
		}
		 
		featureNameList.addAll(prevFeatureList); 
		while(featureNameList.size() < maxFeatures) {
			IConstraint constraint = getConstraint(constraintList);
			chosenConstraints.add(constraint.getNode()); 
			insertFeatureNames(constraint, featureNameList);
		}
		completeConstraints(constraintList, featureNameList, chosenConstraints);

		FMWriter writer = new FMWriter(); 
		writer.createFmFile(outPath);
		IFeatureModel outFM = reader.readFM(outPath); 
		writer.addNodeToFeatureModel(outFM, featureNameList, chosenConstraints);
		System.out.println("Lists Feature: " + featureNameList.size() + " // constraints: " + chosenConstraints.size());
		System.out.println("FeatureModel Feature: " + outFM.getFeatureOrderList().size() + " // constraints: " + outFM.getConstraintCount());
		
		IFeatureModel obfusOutFM = null; 
		try {
			obfusOutFM = obfuscate(outFM);
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
		writer.saveFeatureModel(outPath, obfusOutFM);
		return outFM; 
	}
	
	private String pathCreator(int index) {
		String path = outputPath + "model" + index + ".xml"; 
		if(index < 10) {
			path = outputPath + "model000" + index + ".xml";  
		}
		else if(index < 100) {
			path = outputPath + "model00" + index + ".xml";
		}
		else if(index < 1000) {
			path = outputPath + "model0" + index + ".xml";
		}
		return path; 
	}
	private List<String> getStillValidFeatures(List<String> prevFeatures, List<String> modelFeatures){
		List<String> validFeatures = new ArrayList<String>(); 
		for(String feature : prevFeatures) {
			if(modelFeatures.contains(feature)) {
				validFeatures.add(feature); 
			}
		}
		System.out.println("Reused Features: " + validFeatures.size() + " / " + prevFeatures.size());
		return validFeatures; 
	}
	
	private IFeatureModel obfuscate(IFeatureModel outFM) throws Exception {
		IMonitor cm = new ConsoleMonitor(); 
		FeatureModelObfuscator obfuscator = new FeatureModelObfuscator(outFM,salt); 
		return obfuscator.execute(cm); 
	}
	
	private IConstraint getConstraint(List<IConstraint> constraintList) {
		int index = ThreadLocalRandom.current().nextInt(0, constraintList.size()); 
		IConstraint constraint = constraintList.get(index);
		constraintList.remove(index); 
		return constraint; 
	}
	
	private void insertFeatureNames(IConstraint constraint, List<String> featureNameList) {
		for(String s : constraint.getNode().getUniqueContainedFeatures()) {
			if(!featureNameList.contains(s)) {
				featureNameList.add(s);
			}			 
		}
	}
	
	private void completeConstraints(List<IConstraint> constraintList, List<String> featureNameList, List<Node> chosenConstraints) {
		for(IConstraint ic : constraintList) {
			Node n = ic.getNode(); 
			if(featureNameList.containsAll(n.getUniqueContainedFeatures())) {
				chosenConstraints.add(n); 
			}
		}
	}
}
