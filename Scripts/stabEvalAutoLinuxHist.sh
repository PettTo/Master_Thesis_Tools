#!/bin/bash

csvPath='../stabStaticsPairwiseVersions/stab_Linux_History.csv'

folder='../Linux/History_1'

prevModel='model0001'
newModel='model0002'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
 prevModel='model0002'
newModel='model0003'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/

prevModel='model0003'
newModel='model0004'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
 prevModel='model0004'
newModel='model0005'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
 prevModel='model0005'
newModel='model0006'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
prevModel='model0006'
newModel='model0007'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
 prevModel='model0007'
newModel='model0008'

 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/
 
prevModel='model0008'
newModel='model0009'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/

prevModel='model0009'
newModel='model0010'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $folder/$prevModel.xml $folder/products_$prevModel/ $folder/$newModel.xml $folder/products_$newModel/

echo '########## Finish ###########'
