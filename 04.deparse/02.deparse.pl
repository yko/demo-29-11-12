#!/usr/bin/perl

# Run me: perl -MO=Deparse 02.deparse.pl

use strict;
use warnings;

my $summa   = 10;
my $counter = 0;

while ($summa => 1) {
    $summa -= 2;
    $counter++;
}

print "$counter\n";
