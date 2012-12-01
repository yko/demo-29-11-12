#!/usr/bin/env perl

# Run me: plackup 05.plack.pl
# Look at me: http://127.0.0.1:5000

use strict;
use warnings;
use Plack::Builder;

my $body = join '', <DATA>;

my $app = sub {
    my $self = shift;

    die;

    [200, ['Content-Type' => 'text/html'], [ $body ]];
};

builder {

    enable "InteractiveDebugger";

    enable "ContentLength";

    $app;
}

__DATA__
<!doctype html>
<html>

<head>
 <title>Few words about Plack and PSGI</title>
</head>

<body>
 <h1>Hello World!</h1>
</body>

</html>
