#!/usr/bin/env perl
use strict;
use warnings;

use Log::Log4perl ':easy';

Log::Log4perl->easy_init($DEBUG);

my $secret = 'secret-password';

print "Enter password: ";

my $password = <STDIN>;

DEBUG "Checking '$password' against '$secret'\n";

if ($password ne $secret) {
    die "Access denied\n";
}

print "Access granted\n";

# do something secret

