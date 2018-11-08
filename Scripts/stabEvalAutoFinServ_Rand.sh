#!/bin/bash

basePath='../'
csvPath='../testStabAna/stab_finserv_test.csv'
algo='Rand2'

prevFolder='/FinancialServices_2017-05-22'
newFolder='/FinancialServices_2017-09-28'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-09-28'
newFolder='/FinancialServices_2017-10-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-10-20'
newFolder='/FinancialServices_2017-11-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-11-20'
newFolder='/FinancialServices_2017-12-22'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-12-22'
newFolder='/FinancialServices_2018-01-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-01-23'
newFolder='/FinancialServices_2018-02-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-02-20'
newFolder='/FinancialServices_2018-03-26'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-03-26'
newFolder='/FinancialServices_2018-04-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
 
 prevFolder='/FinancialServices_2018-04-23'
newFolder='/FinancialServices_2018-05-09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'

algo='Rand3'

prevFolder='/FinancialServices_2017-05-22'
newFolder='/FinancialServices_2017-09-28'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-09-28'
newFolder='/FinancialServices_2017-10-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-10-20'
newFolder='/FinancialServices_2017-11-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-11-20'
newFolder='/FinancialServices_2017-12-22'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-12-22'
newFolder='/FinancialServices_2018-01-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-01-23'
newFolder='/FinancialServices_2018-02-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-02-20'
newFolder='/FinancialServices_2018-03-26'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-03-26'
newFolder='/FinancialServices_2018-04-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
 
 prevFolder='/FinancialServices_2018-04-23'
newFolder='/FinancialServices_2018-05-09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'

algo='Rand4'

prevFolder='/FinancialServices_2017-05-22'
newFolder='/FinancialServices_2017-09-28'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-09-28'
newFolder='/FinancialServices_2017-10-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-10-20'
newFolder='/FinancialServices_2017-11-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-11-20'
newFolder='/FinancialServices_2017-12-22'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-12-22'
newFolder='/FinancialServices_2018-01-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-01-23'
newFolder='/FinancialServices_2018-02-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-02-20'
newFolder='/FinancialServices_2018-03-26'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-03-26'
newFolder='/FinancialServices_2018-04-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
 
 prevFolder='/FinancialServices_2018-04-23'
newFolder='/FinancialServices_2018-05-09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'

algo='Rand5'

prevFolder='/FinancialServices_2017-05-22'
newFolder='/FinancialServices_2017-09-28'
java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-09-28'
newFolder='/FinancialServices_2017-10-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-10-20'
newFolder='/FinancialServices_2017-11-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-11-20'
newFolder='/FinancialServices_2017-12-22'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2017-12-22'
newFolder='/FinancialServices_2018-01-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-01-23'
newFolder='/FinancialServices_2018-02-20'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-02-20'
newFolder='/FinancialServices_2018-03-26'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/

prevFolder='/FinancialServices_2018-03-26'
newFolder='/FinancialServices_2018-04-23'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
 
 prevFolder='/FinancialServices_2018-04-23'
newFolder='/FinancialServices_2018-05-09'
 java -Xmx9g -jar ./StabilityEvaluator/Jar/stabEvaluator.jar $csvPath $basePath$prevFolder/model.xml $basePath$prevFolder/products_$algo/ $basePath$newFolder/model.xml $basePath$newFolder/products_$algo/
echo $' Rbadom finished\n' >> $csvPath
echo '########## Finish ###########'
