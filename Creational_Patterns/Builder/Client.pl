#! usr/local/bin/perl
use strict;
use warnings;
use Director;
use ConcreteBuilder1;
use ConcreteBuilder2;

my $director = Director->new();

my $b1 = ConcreteBuilder1->new( part_a => "Part A", part_b => "Part B");
my $b2 = ConcreteBuilder2->new( part_a => "Part X", part_b => "Part Y");

$director->construct($b1);
my $p1 = $b1->get_result();
$p1->show();

$director->construct($b2);
my $p2 = $b2->get_result();
$p2->show();
