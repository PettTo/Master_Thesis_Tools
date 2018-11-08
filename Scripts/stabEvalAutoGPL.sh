#!/bin/bash

basePath='../'
csvPath='../stabStaticsPairwiseVersions/stab_GPL_Incling.csv'
prevFolder='./GPL_01'
newFolder='./GPL_02'
algo='IncLing1'

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
echo $'\n' >> $csvPath
echo '########## Finish ###########'
