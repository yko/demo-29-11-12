# Komodo remote debugging environment
# setup Komodo,
# source setup-environment.sh
# run something perlish

export PERL5OPT=-d
export PERLDB_OPTS=RemotePort=localhost:9451
export PERL5DB='BEGIN { require q(/home/korshak/Komodo/lib/support/dbgp/perllib/perl5db.pl); $DB::single=1 }'
export PERL5LIB=/home/korshak/Komodo/lib/support/dbgp/perllib

