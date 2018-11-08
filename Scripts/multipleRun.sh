#!/bin/bash

command='./stabEvalAutoautomoHist.sh'
logPath='runAutomoHist.log'

$command >> $logPath
$command >> $logPath
$command >> $logPath
$command >> $logPath
echo '########## Finish ###########'
