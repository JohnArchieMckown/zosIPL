#!/usr/bin/perl 
#===============================================================================
#
#         FILE:  ipl.ops.pl
#
#        USAGE:  ./ipl.ops.pl  
#
#  DESCRIPTION:  
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  YOUR NAME (), 
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  11/25/2011 10:03:17 AM
#     REVISION:  ---
#===============================================================================

use strict;
use warnings;
my (%system,$stc,$system,$rule,$cmd,$timestamp);
while(<>) {
	chomp;
#	@word=split(/ +/,$_);
	$system=substr $_,11,8;
	$timestamp=substr $_,19,18;
	$system=~s/ +$//; #strip off trailing blanks
	$stc=substr $_,66,8;
	$stc=~s/ +//;
	$rule=substr $_,98;
#	$cmd=$rule;
	($rule,$cmd)=$rule=~m/^([^ ]+) +(.*)$/;
	print "$system\t$timestamp\t$stc\t$rule\t$cmd\n";
}

