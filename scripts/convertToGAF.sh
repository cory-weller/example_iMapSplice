#!/usr/bin/env bash

inFile=${1}

awk '{OFS="\t";} {print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$1,$1}' ${inFile}
