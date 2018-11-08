#!/bin/bash

command='./stabEvalAutoFinServ_ICPL.sh'
logPath='runFinServICPL.log'

$command >> $logPath
$command >> $logPath
$command >> $logPath
$command >> $logPath
echo '########## Finish ###########'
