#!/usr/bin/perl -w
# This script gets the PUBMED sbstracts for a given term

use LWP::Simple;

#delete old abstract.txt file
unlink "abstracts.txt";

# to further customize the search term, go to pubmed and search based on date, keywords, etc
# once had search result, copy the updated url, and copy the term = () field and put it in code
# https://www.ncbi.nlm.nih.gov/pubmed/?term=((%222020%2F01%2F01%22%5BDate+-+Publication%5D+%3A+%223000%22%5BDate+-+Publication%5D))+AND+corona+virus+sars


#search term to find
$search_term = "breast cancer";

#replace space with +
# caution, no space is allowed right after =
$search_term =~ s/\s/+/g;

#print $search_term;

#maximum number of results to retrieve
$retmax = 10;

#base url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set the database to search
$db_name = 'pmc';

#generate the query url
$url = $base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

#print $url;

#submit the search and retrieve the XML based results
$esearch_result = get($url);

#print "$esearch_result";

#extract paper IDs using match regex . anything * anytime, globally
@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

#print join(',',@ids);


#loop through all the ids
foreach $id (@ids)
    {
    print "$id\n";
    #get abstract for each pubmed id
    $fetchurl = $base. "efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    open(OUTFILE,'>>','abstracts.txt');
    #get the resutls and print to the filehande
    print OUTFILE get($fetchurl);
    sleep 1;
    #close file
    close OUTFILE;
    }


