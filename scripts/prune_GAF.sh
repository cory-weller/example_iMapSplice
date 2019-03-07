#!/usr/bin/env bash

# Array of chromosome IDs to pull out from the gene annotation file
desired_chromosome_ids=( "chr2L" "chr2R" "chr3L" "chr3R" "chrX" )

raw_gene_annotation_file="${1}"
pruned_gene_annotation_file="${1%.gaf}.pruned.gaf"

for chromosome in ${desired_chromosome_ids[@]}; do
    pattern="^.*\s${chromosome}\s[\+\-]\s[0-9]+\s"
    grep -E $pattern ${raw_gene_annotation_file}
done
