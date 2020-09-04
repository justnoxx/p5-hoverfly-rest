use strict;
use warnings;
use Data::Dumper;
use Hoverfly::REST;
use Test::More tests => 2;

my $hoverfly = Hoverfly::REST->new();

my $new_mode = $hoverfly->switch_mode('capture', {stateful => \1});
is ($new_mode, 'capture', 'Switching to capture mode.');

my $mode = $hoverfly->get_mode();
is ($mode, 'capture', 'Getting mode');

