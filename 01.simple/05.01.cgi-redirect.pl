#!/usr/bin/env perl

BEGIN {
    open STDERR, '>', 'error.log';
};

use strict;
use warnings;

use CGI;

my $q = CGI->new;

warn "Printing my stuff out";

print $q->header,
  $q->start_html('Hello World'),
  $q->h1("Please, don't use CGI"),
  $q->p("Seriously. Let it die."),
  $q->end_html;

