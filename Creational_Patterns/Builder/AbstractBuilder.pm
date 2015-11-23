package AbstractBuilder;
use strict;
use warnings;
use 5.010;

sub new {
    my ($self) = @_;
}

sub build_part_a {
    ABSTRACT METHOD @_;
}

sub build_part_b {
    ABSTRACT METHOD @_;
}

sub get_result {
    ABSTRACT METHOD @_;
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
    foreach my $method ( qw( build_part_a build_part_b get_result ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
