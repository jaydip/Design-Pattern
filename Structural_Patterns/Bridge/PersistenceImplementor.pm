# Implementor
package PersistenceImplementor;
use strict;
use warnings;
use Carp;
sub new {
    my ($self) = @_;
}

sub save_object {
    ABSTRACT METHOD @_;
}

sub delete_object {
    ABSTRACT METHOD @_;
}

sub get_object {
    ABSTRACT METHOD @_;
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( save_object delete_object get_object ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
