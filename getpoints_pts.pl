#!usr/bin/perl -w
use warnings;
use strict;
use diagnostics;

#############################
# Generates an output file merging x,y,z points from .pts files that were landmarked/saved in Landmark Editor
# DKL 02/16/14
# Put all of your landmark files in the same folder as this script, or change the path in line 33
# It starts looking for landmarks on line 3 of the input file. If needed, change line 43 of this script to the appropriate line in the input file.
# Via the command line or terminal, change to that directory and type this code: perl getpoints_acsii.pl
#############################

# declares all of your variables (empty here, to be filled)
my $file='';
my @file=();

my $input='';
my @input=();

my $line='';

my $x= '';
my $y= '';
my $z= '';

# creates an output file. rename as desired!
my $outfile = "merged_landmarks.txt";	
# opens the output file and tells it that you can write text to it
open (OFILE, ">$outfile");

# Change the path below to match the directory where the .pts files are found. All need to be in the same folder.
@file = <*.pts>;
#for every .pts file in that directory, open it
foreach my $file (@file) {
# open a .pts file or gives an error warning
	open (IFILE, $file) or die "\n\n Can't find landmark data file!!\n\n";
# prints the name of the .pts file to the output file, so you know which coordinate data is from which file	
	print OFILE "$file\t";
# read until you reach the last line of the .pts file	
	while (<IFILE>) {
# skip all lines before the 3rd one (where the coordinates start)
		next if $. < 3; 
# skip all lines that don't begin with a letter (non whitespace character pattern match). Prevents unitialized value errors for the last lines of the input that are blank.
		if (m/^\S/) {
		$line = $_;
		chomp($line);
# split each line to a separate element each time you encounter any whitespaces. perl numbering starts from 0.
		@input = split(/\s+/, $line);
#take only elements 1, 2, and 3 (which correspond to the x, y, and z coordinates) out of each split line and name them as these variables						
		$x = $input[1];
		$y = $input[2];
 		$z = $input[3];
#print those variables (coordinates) to your output file
		print OFILE "$x\t$y\t$z\t";
	}
}
#go to the next empty line in your output file, close that .pts file, and open the next file
print OFILE "\n";
close IFILE;
}

#close your output file (now with text written to it)
close OFILE;
exit;
