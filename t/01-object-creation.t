use strict;
use warnings;
use Data::Dumper;
use Hoverfly::REST;

use Test::More tests => 6;

my $h = Hoverfly::REST->new();

is($h->get_host(), 'localhost');
is($h->get_port(), '8888');
is($h->get_proto(), 'http');


my ($proto, $host, $port) = ('https', 'somehost', '9999');
my $h2 = Hoverfly::REST->new({
    proto => $proto,
    host => $host,
    port => $port
});

is($h2->get_host(), $host);
is($h2->get_port(), $port);
is($h2->get_proto(), $proto);
