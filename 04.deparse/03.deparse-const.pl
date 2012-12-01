#!/usr/bin/env perl

# Run me: perl -MO=Deparse 03.deparse-const.pl

use strict;
use warnings;

use constant DEBUG => $ENV{DEBUG};

my $secret = 'secret-password';

print "Enter password: ";

my $password = <STDIN>;

print "Checking '$password' against '$secret'\n" if DEBUG;

if ($password ne $secret) {
    die "Access denied\n";
}

print "Access granted\n";

# do something secret
