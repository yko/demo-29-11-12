#!/usr/bin/env perl
use strict;
use warnings;

print "Starting...\n";

my $pid = fork;

die "Out of memory?" unless defined $pid;

if ($pid) {
    print "I'm parent!\n";
}
else {
    print "I'm children!\n";
    exit 42;
}

waitpid $pid, 0;

print "Children exited with code: " . ($? >> 8) . "\n";

print "The end.\n";
