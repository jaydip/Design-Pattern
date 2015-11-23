#! usr/local/bin/perl
use strict;
use warnings;
use FactoryMaker;
use Data::Dumper::Simple;


print "Enter Choice [a/b]: ";
chomp(my $ch = <STDIN>);
my $obj = FactoryMaker->new(
                            choice         => $ch,
                            productA1_name => "P",
                            productB1_name => "Q",
                            productA2_name => "R",
                            productB2_name => "S"
        );
        
print Dumper $obj;
