#!/bin/bash

basePath='../'
csvPath='../stabStaticsPairwiseVersions/stab_Linux_ICPL.csv'
algo='ICPL1'

prevFolder='/Linux/Linux_2017-11-15-182105'
newFolder='/Linux/Linux_2017-11-22-071835'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2017-11-22-071835'
newFolder='/Linux/Linux_2017-11-26-141154'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2017-11-26-141154'
newFolder='/Linux/Linux_2017-12-17-135726'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2017-12-17-135726'
newFolder='/Linux/Linux_2017-12-22-201300'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2017-12-22-201300'
newFolder='/Linux/Linux_2017-12-23-115304'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2017-12-23-115304'
newFolder='/Linux/Linux_2018-01-08-111040'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2018-01-08-111040'
newFolder='/Linux/Linux_2018-01-08-200504'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/Linux/Linux_2018-01-08-200504'
newFolder='/Linux/Linux_2018-01-12-001428'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
 
 prevFolder='/Linux/Linux_2018-01-12-001428'
newFolder='/Linux/Linux_2018-01-14-095125'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

echo '########## Finish ###########'
