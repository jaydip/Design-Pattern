package Component;
use strict;
use warnings;

sub new {
    my ($self, $name) = @_;
    $self->{ _name } = $name;
}

sub name {
    my ($self) = @_;
    return $self->{ _name };
}

sub add {
    ABSTRACT METHOD @_;
}

sub remove {
    ABSTRACT METHOD @_;
}

sub display {
    ABSTRACT METHOD @_;
}

sub METHOD::ABSTRACT
{
    my ($self) = @_;
    my $object_class = ref($self);
    my ($file, $line, $method) = (caller(1))[1..3];
    my $loc = "at $file, line $line\n";
    print "call to abstract method ${method} $loc";
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( add remove display ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
