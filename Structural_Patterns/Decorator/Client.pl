#! usr/local/bin/perl
use strict;
use warnings;
use ConcreteComponent;
use ConcreteDecoratorA;
use ConcreteDecoratorB;

my $c  = ConcreteComponent->new();
my $d1 = ConcreteDecoratorA->new();
my $d2 = ConcreteDecoratorB->new();

$d1->set_component($c);
$d2->set_component($d1);

$d2->operation();
