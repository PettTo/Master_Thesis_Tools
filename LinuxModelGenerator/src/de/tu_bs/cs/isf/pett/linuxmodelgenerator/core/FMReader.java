package de.tu_bs.cs.isf.pett.linuxmodelgenerator.core;

import java.nio.file.Paths;

import de.ovgu.featureide.fm.core.base.IFeatureModel;
import de.ovgu.featureide.fm.core.io.manager.FeatureModelManager;
import de.ovgu.featureide.fm.core.io.manager.FileHandler;

public class FMReader {
	
	public FMReader() {
		
	}
	
	public IFeatureModel readFM(String fmPath) {
		FileHandler<IFeatureModel> fmHandler = FeatureModelManager.load(Paths.get(fmPath));
		if(fmHandler == null) {
			System.out.println("Problems while loading FeatureModel from Path: " + fmPath.toString());
			System.exit(0);
		}
		return fmHandler.getObject(); 
	}

}
