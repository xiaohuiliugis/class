<?php

#Author  Xiaohui Liu

#variable
$DNA = "XIAOHUILIU";
print $DNA."\n";

#string concatanation
$DNA2 = "HELLOGISER";
print "here are the original two DNA fragments:\n";
print $DNA."\n";
print $DNA2."\n";

$DNA3 = "$DNA$DNA2";

print "here is the concatanation of the first two fragments(version 1):\n\n";
print $DNA."\n";

#transcribe DNA to RNA
$RNA = $DNA3;
$RNA = str_replace("T","U",$RNA);
print "Here is the result of transcribing the DNA to RNA: \n";
print "$RNA\n";

?>

