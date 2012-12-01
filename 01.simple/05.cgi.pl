#!/usr/bin/env perl
use strict;
use warnings;

use CGI;

my $q = CGI->new;

print $q->header;

print $q->start_html('Hello World');
print $q->h1("Please, don't use CGI.pm");
print $q->p("Seriously. Let it rest in peace.");
print $q->end_html;

__END__

STDOUT > client
STDERR > server logfile
