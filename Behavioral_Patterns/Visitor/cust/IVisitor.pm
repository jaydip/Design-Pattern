package IVisitor;
use strict;
use warnings;
use Carp;

sub new {
    my ($self) = @_;
}

sub visit {
    ABSTRACT METHOD @_;
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( visit ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;

