perl -MO=Deparse -E 'say shift =~ /\d+/' 3

perl -MO=Deparse -MLWP -e 'print 1'

perl -MO=Deparse,-p -MTry::Tiny -e 'try { print 1 } catch sub { warn "Died" }'

perl -MO=Deparse -ne 'print $_' text
