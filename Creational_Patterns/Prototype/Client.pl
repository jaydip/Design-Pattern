#! usr/local/bin/perl
use strict;
use warnings;
use Square;
use Data::Dumper::Simple;

sub getNewRectangle {
    return Square->new();
}

my $rect = &getNewRectangle();
$rect->width(5);
$rect->height(15);
$rect->print_me();
