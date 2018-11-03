package de.tu_bs.cs.isf.pett.linuxmodelgenerator.core;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

import org.prop4j.Node;

import de.ovgu.featureide.fm.core.base.IFeature;
import de.ovgu.featureide.fm.core.base.IFeatureModel;
import de.ovgu.featureide.fm.core.base.IFeatureModelFactory;
import de.ovgu.featureide.fm.core.base.impl.FMFactoryManager;
import de.ovgu.featureide.fm.core.io.IPersistentFormat;
import de.ovgu.featureide.fm.core.io.manager.FeatureModelManager;
import de.ovgu.featureide.fm.core.io.manager.FileHandler;
import de.ovgu.featureide.fm.core.io.manager.SimpleFileHandler;

public class FMWriter {
	private static final String ROOT_IDENTIFIER = "__Root__";
	
	/**
	 * @return the rootIdentifier
	 */
	public static String getRootIdentifier() {
		return ROOT_IDENTIFIER;
	}

	public FMWriter() {
		
	}
	
	public void createFmFile(String path) {
		StringBuilder sb = new StringBuilder(); 
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>"); 
		sb.append("\t<featureModel>");
		sb.append("\t<properties/>");
		sb.append("\t<struct>");
		sb.append("\t\t<and abstract=\"true\" mandatory=\"true\" name=\"Root\">");
		sb.append("\t\t\t<feature name=\"Base\"/>");
		sb.append("\t\t</and>");
		sb.append("\t</struct>");
		sb.append("\t<constraints/>");
		sb.append("\t\t<calculations Auto=\"true\" Constraints=\"true\" Features=\"true\" Redundant=\"true\" Tautology=\"true\"/>");
		sb.append("\t<comments/>");
		sb.append("\t<featureOrder userDefined=\"false\"/>");
		sb.append("</featureModel>");
		
		writeBasicModel(sb, path);
		
	}
	
	private void writeBasicModel(StringBuilder sb, String path) {
		File file = new File(path);
		BufferedWriter writer = null; 
		try {
			writer = new BufferedWriter(new FileWriter(file)); 
			writer.append(sb); 
		} catch (IOException e) {
			System.out.println("Problems file opening output path.");
			System.out.println("shutting down system");
			e.printStackTrace();
		} finally {
			if(writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					System.out.println("Problems file opening output path.");
					System.out.println("shutting down system");
					e.printStackTrace();
				}
			}
		}
	}
	
	public void addNodeToFeatureModel(IFeatureModel featureModel, List<String> features, List<Node> clauses) {
		// Add a dummy feature as root.
		final IFeatureModelFactory factory = FMFactoryManager.getFactory(featureModel);
		final IFeature rootFeature = factory.createFeature(featureModel, ROOT_IDENTIFIER);
		rootFeature.getStructure().setAbstract(true);
		featureModel.addFeature(rootFeature);
		featureModel.getStructure().setRoot(rootFeature.getStructure());

		// Add a features.
		for (final String featureName : features) {
			final IFeature feature = factory.createFeature(featureModel, featureName);
			featureModel.addFeature(feature);
			rootFeature.getStructure().addChild(feature.getStructure());
		}

		// Add a constraint for each conjunctive clause.
		for (final Node clause : clauses) {
			featureModel.addConstraint(factory.createConstraint(featureModel, clause));
		}
		
	}
	
	public void saveFeatureModel(String fmPath, IFeatureModel featureModel) {
		FileHandler<IFeatureModel> handler = FeatureModelManager.load(Paths.get(fmPath));
		IPersistentFormat<IFeatureModel> fmFormat = handler.getFormat(); 
		SimpleFileHandler.save(Paths.get(fmPath), featureModel, fmFormat);
	}

}
