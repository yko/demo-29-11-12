#!/usr/bin/env perl

# Run me: plackup 05.facility-plack.pl
# Look at me: http://127.0.0.1:5000

use strict;
use warnings;
use Plack::Builder;

my $body = join '', <DATA>;

my $app = sub {
    my $self = shift;

    # Do whatever you want, but return PSGI-compatible response
    [200, ['Content-Type' => 'text/html'], [ $body ]];
};

builder {
    # Precious debug info. Right on your page!
    enable 'Debug';

    # Uncomment this line to see debug output
    # die

    # Let Plack care about length header
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
