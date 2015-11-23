#! usr/local/bin/perl
use strict;
use warnings;
use PackageA;
use PackageB;

my $obj = PackageA->new();
$obj->performTrip();
print "\n---------------------------------------\n";
my $obj1 = PackageB->new();
$obj1->performTrip();
