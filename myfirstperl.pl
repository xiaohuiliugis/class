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


