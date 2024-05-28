#!/bin/bash

#Search for patters
#Usage
#bash ZFNsearch.sh Prep_Genome_FASTA_file Pattern1 num_of_random_na Pattern2
#Go to file that includes Prep_genome from Prepare_Genome.sh
#Get Prep_genome from command line
genome=$1; 
#Extract matches
grep -E -o $2'.{'$3'}'$4 $genome
#Extract seqs
grep -E -o '.{100}'$2'.{'$3'}'$4'.{100}' $genome > 'seqs_'$2'_'$3'_'$4'_list.txt'