#!/usr/bin/env perl
use Dancer;

# Run me: perl 04.facility-dancer.pl
# Look at me: http://127.0.0.1:3000

set logger => 'console'; #'colorConsole';
set log => 'debug';

debug "Initialize Dancer app";

get '/' => sub {

    unless (params->{test}) {
        error("No 'test' parameter passed");
    }

    debug "Rendering 'Hello World' text";

    return "Hello World!";
};

debug "Starting Dancer app";

dance;
