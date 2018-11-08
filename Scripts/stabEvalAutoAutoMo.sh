#!/bin/bash

basePath='../'
csvPath='../stabStaticsPairwiseVersions/stab_automo_random.csv'
algo='Rand1'

prevFolder='../Automotive02_V1'
newFolder='../Automotive02_V2'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $prevFolder/model.xml $prevFolder/products_$algo/ $newFolder/model.xml $newFolder/products_$algo/

prevFolder='../Automotive02_V2'
newFolder='../Automotive02_V3'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $prevFolder/model.xml $prevFolder/products_$algo/ $newFolder/model.xml $newFolder/products_$algo/

prevFolder='../Automotive02_V3'
newFolder='../Automotive02_V4'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $prevFolder/model.xml $prevFolder/products_$algo/ $newFolder/model.xml $newFolder/products_$algo/
echo '########## Finish ###########'
