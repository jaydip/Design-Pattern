#! usr/local/bin/perl
use strict;
use warnings;
use Factory;

use constant ROW => 6;
use constant COL => 10;

my $theFactory = Factory->new();

for( my $i = 0 ; $i < ROW ; $i++ ) {
    for( my $j = 0 ; $j < COL ; $j++ ) {
        $theFactory->getFlyweight($i)->report($j);
    }
    print "\n";
}

# call from cache
print "\nCall from cache : ";
$theFactory->getFlyweight(3)->report(7);
print "\n";
