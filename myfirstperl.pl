#!usr/bin/perl -w
$DNA='DAFDAFDAFASDF';
$DNA2 ='DAFDAFDSF';
#\n new line
#\t tab

print "here are some DNAs\n\n";
print $DNA,"\n";
print $DNA2,"\n\t",

#concatenate DNA
#''change its content to string,"" retrive its value
$DNA3 = "$DNA$DNA2";
#$DNA3 = '$DNA$DNA2';
print "here are other DNA";

#DNA to RNA
$DNA = 'XIAOHUILIU';

print "\nHere is the starting DNA:\n";
print "$DNA\n\n";
$RNA =$DNA;
$RNA =~ s/U/T/g;
print "Here is the result of transcribing RNA:\n";
print "$RNA\n";

#!/usr/local/bin/perl -w
#library for using perl
use LWP::Simple;
#query list of ids
$gilist ='24475906,224465210,50978625,9507198';

#NCBI url base, the base url to access all other resources
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#specify the data base variables
###

###
#the period is a concatenation of variable and non variable
$url =$base . "efetch.fcgi?db=nucleotide&id=$gi_list&rettype=acc";

#post the url query to NCBI
$output=get($url);

#show the output to the screen
print "$output";
