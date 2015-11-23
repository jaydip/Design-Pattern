package FactoryMaker;
use strict;
use warnings;
use 5.010;
use ConcreteFactory1;
use ConcreteFactory2;

@FactoryMaker::ISA = qw / ConcreteFactory1 ConcreteFactory2 /;

sub new {
    my ($class, %args) = @_;
    my $self = bless {},ref($class)||$class;
    my $ch = $args{ choice };
    my $obj;
    if ($ch eq 'a') {
        return ConcreteFactory1->new( %args );
    }
    else {
        return ConcreteFactory2->new( %args );
    }
}
1;
