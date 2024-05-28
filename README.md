# ZFNsearch
ZFNsearch.sh is a unix script that allows searches of any specific genomic sequence pair, interrupted by a given number of random nucleic acids. The search is possible for any given nucleotide FASTA sequence of interest or even whole genomes of any organism, given they are prepared by the also included unix script Prapare_Genome.sh. 

This scrip can be applied for any pair of specific sequences that is interrupted by a specific number of random nucleotides, however it has been successfully applied to detect and report ZFN recognized targets, important for genome editing. The detected patterns will be reported in the command line, as well as in an output text file, that includes a sequence list of the detected patterns along flanking sequences (x100 bp on each side), a feature that enables further sequence analysis like Blast.

Steps of analysis 
(All files need to be in the same folder, or whole paths need to be provided)

1) Prepare nucleic sequence reference or whole genome (FASTA file) to search for patters (Need to do it first, and only once per sequence reference).
In case you have used this sequence before go directrly to step 2.
Usage:
bash Prepare_Genome.sh Any_FASTA_file

2) Search for patters
Usage:
bash ZFNsearch.sh Prep_Any_FASTA_file Pattern1 num_of_random_na Pattern2
Where 	Pattern1 = sequence
	num_of_random_na = number 
	Pattern2 = sequence

The script will report the detected patterns in the terminal and output a txt file with a list of sequences found, including flanking sequences (x100 bp on each side).

Developed by Ioanna Karamichali, PhD
Institute of Applied Biosciences at the Centre for Research and Technology Hellas (INAB|CERTH)
In collaboration with:
Ass. Prof. Panagiotis Madesis,  
Dr. Zoi Hilioti and 
Nestor Petrou, MSc.

Please cite using: DOI: 10.5281/zenodo.11369976 
