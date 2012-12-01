#!/usr/bin/env perl
use strict;
use warnings;

my $secret = 'secret-password';

print "Enter password: ";

my $password = <STDIN>;
chomp $password;
print "Checking '$password' against '$secret'\n";

if ($password ne $secret) {
    die "Access denied\n";
}

print "Access granted\n";

# do something secret
