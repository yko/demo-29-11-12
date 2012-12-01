#!/usr/bin/env perl
use strict;
use warnings;

use LWP::UserAgent;

# Create a user agent object
my $ua = LWP::UserAgent->new(agent => 'Kiev-pm-Agent/0.1');

# Prepare URL
my $url = "http://kiev.pm.org/";

# Pass request to the user agent and get a response back
my $res = $ua->get($url);

# Check the outcome of the response
if ($res->is_success) {
    my $content = $res->content;
    print substr($content, 0, 200) . "\n";
}
else {
    die $res->status_line, "\n";
}
