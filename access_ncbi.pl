#!/usr/local/bin/perl -w
#library for using perl
use LWP::Simple;
#query list of ids
$gi_list ='24475906,224465210,50978625,9507198';

#NCBI url base, the base url to access all other resources
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#specify the data base variables
###
#database connection: db=nucleotide
#specify ids/request: id=$gi_list
#specify the output to accession number type: rettype=acc
#if not specified above, return all the result as json on the screen
# if want the output to be saved elsewhere, use shell command >
###
#the period is a concatenation of variable and non variable
$url =$base . "efetch.fcgi?db=nucleotide&id=$gi_list&rettype=acc";



#post the url query to NCBI
$output=get($url);

#show the output to the screen
print "$output";
