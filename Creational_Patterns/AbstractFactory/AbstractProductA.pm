package AbstractProductA;
use strict;
use warnings;
use 5.010;

sub new {
    my ($class) = @_;
}

sub operationA1 {
    ABSTRACT METHOD @_
}

sub operationA2 {
    ABSTRACT METHOD @_
}

sub METHOD::ABSTRACT
{
    my ($self) = @_;
    my $object_class = ref($self);
    my ($file, $line, $method) = (caller(1))[1..3];
    my $loc = "at $file, line $line\n";
    die "call to abstract method ${method} $loc";
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( operationA1 operationA2 ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
