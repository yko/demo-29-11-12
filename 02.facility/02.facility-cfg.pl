#!/usr/bin/env perl
use strict;
use warnings;

use Log::Log4perl ':easy';
use Log::Log4perl::Level;

my $loglevel_str = $ENV{LOGLEVEL} || "ERROR";
my $loglevel_int = Log::Log4perl::Level::to_priority($loglevel_str);

Log::Log4perl->easy_init($loglevel_int);

my $secret = 'secret-password';

print "Enter password: ";

my $password = <STDIN>;

DEBUG "Checking '$password' against '$secret'\n";

if ($password ne $secret) {
    die "Access denied\n";
}

print "Access granted\n";

# do something secret


