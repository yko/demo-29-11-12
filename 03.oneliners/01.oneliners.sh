perl -E 'say substr "12345", 2, 3'

perl -E 'say shift =~ /(\d+)/' 'foo 3 bar'

perl -E 'say shift =~ /(.*?\d)/' 'text 1 text 2 text 3'

perl -MLWP::UserAgent -E 'say LWP::UserAgent->new->get(shift)->headers->as_string' 'http://kiev.pm.org'
