#!/bin/bash

#Prepare Genome to search for patters
#Usage
#bash Prepare_Genome.sh Any_Genome_file.fna
#Go to file that includes genome
#Get genome from command line
genome=$1; #fasta format (not compressed)
#Convert all characters to capital letters
#Remove new lines from fasta sequence
cat $genome | awk '!/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n }' | sed -e 's/\(.*\)/\U\1/' | sed -e "s| ||g" > "Prep_"$1