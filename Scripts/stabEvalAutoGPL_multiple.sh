#!/bin/bash

basePath='../'
csvPath='../Stability_Analysis_Multiple_Runs/stab_GPL_Rand.csv'

algo='Rand0'
prevFolder='./GPL_01'
newFolder='./GPL_02'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_02'
newFolder='/GPL_03'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_03'
newFolder='/GPL_04'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_04'
newFolder='/GPL_05'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_05'
newFolder='/GPL_06'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_06'
newFolder='/GPL_07'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_07'
newFolder='/GPL_08'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_08'
newFolder='/GPL_09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'

algo='Rand1'
prevFolder='./GPL_01'
newFolder='./GPL_02'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_02'
newFolder='/GPL_03'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_03'
newFolder='/GPL_04'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_04'
newFolder='/GPL_05'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_05'
newFolder='/GPL_06'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_06'
newFolder='/GPL_07'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_07'
newFolder='/GPL_08'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_08'
newFolder='/GPL_09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'


algo='Rand2'
prevFolder='./GPL_01'
newFolder='./GPL_02'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_02'
newFolder='/GPL_03'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_03'
newFolder='/GPL_04'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_04'
newFolder='/GPL_05'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_05'
newFolder='/GPL_06'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_06'
newFolder='/GPL_07'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_07'
newFolder='/GPL_08'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_08'
newFolder='/GPL_09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'


algo='Rand3'
prevFolder='./GPL_01'
newFolder='./GPL_02'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_02'
newFolder='/GPL_03'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_03'
newFolder='/GPL_04'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_04'
newFolder='/GPL_05'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_05'
newFolder='/GPL_06'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_06'
newFolder='/GPL_07'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_07'
newFolder='/GPL_08'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_08'
newFolder='/GPL_09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'

algo='Rand4'
prevFolder='./GPL_01'
newFolder='./GPL_02'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_02'
newFolder='/GPL_03'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_03'
newFolder='/GPL_04'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_04'
newFolder='/GPL_05'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_05'
newFolder='/GPL_06'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_06'
newFolder='/GPL_07'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_07'
newFolder='/GPL_08'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/GPL_08'
newFolder='/GPL_09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'
