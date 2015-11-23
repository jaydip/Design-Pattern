#! usr/local/bin/perl
use strict;
use warnings;
use RoundHole;
use SquarePegAdapter;

my $rh = RoundHole->new(5);
my $spa;

foreach my $x (6..9) {
    $spa = SquarePegAdapter->new($x);
    $spa->makeFit($rh);
}
