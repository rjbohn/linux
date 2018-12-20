#!/bin/bash

processString=$(ps -ef | grep '[0-9][0-9]:[0-9][0-9]:[0-9][0-9] /usr/bin/vmtoolsd -n vmusr') # get proc$
tokens=( $processString ) # tokenize
kill "${tokens[1]}" # grab pid and kill it
/usr/bin/vmtoolsd -n vmusr & > /dev/null 2>&1 # restart vmtoolsd
