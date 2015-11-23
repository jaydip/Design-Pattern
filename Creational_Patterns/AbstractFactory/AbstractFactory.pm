package AbstractFactory;
use strict;
use warnings;
use 5.010;
use AbstractProductA;
use AbstractProductB;

sub new {
    my ($self) = @_;
}

sub AbstractProductA::createProductA {
     ABSTRACT METHOD @_;
}

sub AbstractProductB::createProductB {
    ABSTRACT METHOD @_;
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( createProductA createProductB ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
