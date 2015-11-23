package AbstractProductB;
use strict;
use warnings;
use 5.010;

sub new {
    my ($class) = @_;
}

sub operationB1 {
    ABSTRACT METHOD @_
}

sub operationB2 {
    ABSTRACT METHOD @_
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( operationB1 operationB2 ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
