#!/bin/bash

#csvName='./stab_GPL_Chvatal_algoBased.csv'
modelName='model.xml'
algoName='IncLing'
prevFolder='./Automotive02_V1'
#newFolder='./GPL_01'

prevRun=1
nextRun=1

prevAlgo=$algoName$prevRun
nextAlgo=$algoName$nextRun

while [ $prevRun -le 5 ]
do
	prevAlgo=$algoName$prevRun
	filePath=$prevFolder'/stab_AlgoBased_'$algoName'/Run_'$prevRun'.csv'
	touch $filePath
	nextRun=1
	while [ $nextRun -le 5 ]
	do
		nextAlgo=$algoName$nextRun
		echo $prevAlgo' // '$nextAlgo
		java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $filePath $prevFolder/model.xml $prevFolder/products_$prevAlgo/ $prevFolder/model.xml $prevFolder/products_$nextAlgo/
		nextRun=$((nextRun+1))
	done
	prevRun=$((prevRun+1))
done

#java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvName $prevFolder/model.xml $prevFolder/products_$prevAlgo/ $prevFolder/model.xml $newFolder/products_$nextAlgo/

echo '########## Finish ###########'
