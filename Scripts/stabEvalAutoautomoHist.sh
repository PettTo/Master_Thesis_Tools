#!/bin/bash

basePath='../'
csvPath='../stabStaticsPairwiseVersions/stab_automo_incling.csv'

folder='Automotive02_History1'

prevModel='model00001'
newModel='model00002'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath/$folder/$prevModel.xml $basePath/$folder/products_$prevModel/ $basePath/$folder/$newModel.xml $basePath/$folder/products_$newModel/
 
 prevModel='model00002'
newModel='model00003'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath/$folder/$prevModel.xml $basePath/$folder/products_$prevModel/ $basePath/$folder/$newModel.xml $basePath/$folder/products_$newModel/
 
 prevModel='model00003'
newModel='model00004'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath/$folder/$prevModel.xml $basePath/$folder/products_$prevModel/ $basePath/$folder/$newModel.xml $basePath/$folder/products_$newModel/
 
echo '########## Finish ###########'
