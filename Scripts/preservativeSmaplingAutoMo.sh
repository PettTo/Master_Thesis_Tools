#!/bin/bash

basePath='./'
model1='./model00001.xml'

model2='./model00002.xml'
products1='./products_model00001'

model3='./model00003.xml'
products2='./products_model00002'

model4='./model00004.xml'
products3='./products_model00003'

java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model1 ./

read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 60;

java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model2 $products1

read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 60;

java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model3 $products2

read -rsp $'Press any key or wait 5 seconds to continue...\n' -n 1 -t 60;

java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model4 $products3

#cd ../Automotive02_History2

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model1 ./

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model2 $products1

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model3 $products2

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model4 $products3

#cd ../Automotive02_History3

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model1 ./

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model2 $products1

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model3 $products2

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model4 $products3

#cd ../Automotive02_History4

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model1 ./

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model2 $products1

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model3 $products2

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model4 $products3

#cd ../Automotive02_History5

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model1 ./

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model2 $products1

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model3 $products2

#java -jar -Xmx13g ../Tools/HistorySamplingV2/Jar/historySmapling.jar $basePath $model4 $products3

