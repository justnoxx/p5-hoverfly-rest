use strict;
use warnings;
use Data::Dumper;
use Hoverfly::REST;
use JSON;

use Test::More tests => 3;

my $hoverfly = Hoverfly::REST->new();

my $new_mode = $hoverfly->switch_mode('capture', {stateful => \1});
is ($new_mode, 'capture', 'Switching to capture mode.');

my $mode = $hoverfly->get_mode();
is ($mode, 'capture', 'Getting mode');

my $simulation = $hoverfly->get_simulation();

ok(decode_json($simulation), 'Simulation is a valid JSON');
