#!/usr/bin/env bash

inFile=${1}

awk '{OFS="\t";} NR>1 {print $2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$2,$2}' ${inFile}
