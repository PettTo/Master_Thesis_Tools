#!/bin/bash

csvPath='./stab_GPL_History.csv'

folder='GPL_History'

prevModel='model00001'
newModel='model00002'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
 prevModel='model00002'
newModel='model00003'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
 prevModel='model00004'
newModel='model00005'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
 prevModel='model00005'
newModel='model00006'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
prevModel='model00006'
newModel='model00007'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
 prevModel='model00007'
newModel='model00008'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
 
 prevModel='model00008'
newModel='model00009'

 java -Xmx9g -jar ./Tools/StabilityEvaluator/Jar/stabEvaluator.jar $csvPath ./$folder/$prevModel.xml ./$folder/products_$prevModel/ ./$folder/$newModel.xml ./$folder/products_$newModel/
echo '########## Finish ###########'
