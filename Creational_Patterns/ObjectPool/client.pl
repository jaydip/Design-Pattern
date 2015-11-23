#! usr/local/bin/perl
use strict;
use warnings;
use ReusePool;

my $obj1 = ReusePool->new(
                            no1 => 10,
                            no2 => 20,
                            no3 => 30
            );
            
my $obj2 = ReusePool->new(
                            no1 => 8,
                            no2 => 7,
                            no3 => 6
            );
            
my $obj3 = ReusePool->new(
                            no1 => 25,
                            no2 => 15,
                            no3 => 40
            );
            
$obj1->print_sum();
$obj2->print_sum();
$obj3->print_sum();
