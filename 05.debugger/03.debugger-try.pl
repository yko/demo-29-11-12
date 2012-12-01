use strict;
use warnings;

use Try::Tiny;

print "Let's try something dangerous\n";

try {
    die "Try this!";
}
catch {
    my $err = shift;

    print "Please, don't use CGI.pm\n";
    print "Error message: $err";
};
