#! usr/local/bin/perl
use strict;
use warnings;
use Nullclass;
use Realclass;

my $obj1 = Realclass->new();
$obj1->print_me("Hello");

my $obj2 = Nullclass->new();
$obj2->print_me("Hello");
