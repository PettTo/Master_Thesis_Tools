package de.tu_bs.cs.isf.pett.stabilitycalculator.evaluator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.google.common.collect.Sets;

import de.ovgu.featureide.fm.core.base.IFeatureModel;

public class MSOC extends AMetric{
	
	protected class ConfigurationPair{
		private int key_s1 = 0; 
		private int key_s2 = 0; 
		private double similarity = 0.0; 
		
		public ConfigurationPair(int key_s1, int key_s2, double similarity) {
			this.key_s1 = key_s1; 
			this.key_s2 = key_s2; 
			this.similarity = similarity;  
		}
		
		public ConfigurationPair() {
		}
		
		public int getKey1() {
			return key_s1; 
		}
		public int getKey2() {
			return key_s2; 
		}
		
		public double getSimilarity() {
			return similarity; 
		}
	}

	protected HashMap<Integer, Set<String>> sampleMap1;
	protected HashMap<Integer, Set<String>> sampleMap2;
	
	protected Set<String> combinedFeatureSet; 
	
	protected List<ConfigurationPair> pairList = new ArrayList<>();
	
	public MSOC() {
		
	}
	
	public double analyze(IFeatureModel fm1, List<List<String>> sample1List, IFeatureModel fm2, List<List<String>> sample2List) {
		
		this.sampleMap1 = generateSampleMap(SampleListToSet(sample1List)); 
		this.sampleMap2 = generateSampleMap(SampleListToSet(sample2List)); 
		
		combinedFeatureSet = buildCombinedFS(fm1, fm2);
		
		findConfigurationPairs(); 
		
		return simAgregation(pairList); 
	}
	
	protected double simAgregation(List<ConfigurationPair> pairList) {
		double simSum = 0; 
		for(ConfigurationPair pair : pairList) {
			simSum += pair.getSimilarity(); 
		}
		
		return simSum / pairList.size(); 
	}
	
	protected void findConfigurationPairs() {
//		List<ConfigurationPair> pairList = new ArrayList<>();
		
		Set<Integer> keySet1 = new HashSet<>(); 
		keySet1.addAll(sampleMap1.keySet());
		
		Set<Integer> keySet2 = new HashSet<>(); 
		keySet2.addAll(sampleMap2.keySet());
		
		for(int key1 : keySet1) {
			double maxSimilarity = 0;
			ConfigurationPair confPair = new ConfigurationPair(); 
			for(int key2 : keySet2) {
				double confSim = calcConfSim(sampleMap1.get(key1), sampleMap2.get(key2)); 
				if(confSim > maxSimilarity) {
					maxSimilarity = confSim; 
					confPair = new ConfigurationPair(key1, key2, confSim); 
				}
			}
			keySet2.remove(confPair.getKey2());
			this.pairList.add(confPair); 
		}
		
		for(ConfigurationPair pair : pairList) {
			keySet1.remove(pair.getKey1()); 
		}
		
		if(!keySet1.isEmpty()) {
			for(int key : keySet1) {
				this.pairList.add(new ConfigurationPair(key, 0, 0)); 
			}
		}
		if(!keySet2.isEmpty()) {
			for(int key : keySet2) {
				this.pairList.add(new ConfigurationPair(0, key, 0));
			}
		}
	}
	
	protected HashMap<Integer, Set<String>> generateSampleMap(Set<Set<String>> sample) {
		HashMap<Integer, Set<String>> map = new HashMap<>(); 
		int index = 1; 
		for(Set<String> conf : sample) {
			Integer key = index++; 
			map.put(key, conf); 
		}
		return map; 
	}
	
	protected Set<String> buildCombinedFS(IFeatureModel fm1, IFeatureModel fm2){
		
		Set<String> fs1 = ListToSet(fm1.getFeatureOrderList()); 
		Set<String> fs2 = ListToSet(fm2.getFeatureOrderList()); 
		
		return Sets.union(fs1, fs2); 
	}
	
	protected double calcConfSim(Set<String> conf1, Set<String> conf2) {
		 
		Set<String> difFSconf1 = Sets.difference(combinedFeatureSet, conf1);
		Set<String> difFSconf2 = Sets.difference(combinedFeatureSet, conf2);
		double absConfIntersec = (double) Sets.intersection(conf1, conf2).size();
		double absDifIntersec = (double) Sets.intersection(difFSconf1, difFSconf2).size(); 
		
		return (absConfIntersec + absDifIntersec) / combinedFeatureSet.size(); 
	}
	
	
}
