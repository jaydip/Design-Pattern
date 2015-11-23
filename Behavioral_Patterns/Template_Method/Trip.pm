package Trip;
use strict;
use warnings;

sub new {
    my ($self) = @_;
}

sub performTrip {
    my ($self) = @_;
    $self->doComingTransport();
    $self->doDayA();
    $self->doDayB();
    $self->doDayC();
    $self->doReturningTransport();
}

sub doComingTransport {
    ABSTRACT METHOD @_;
}

sub doDayA {
    ABSTRACT METHOD @_;
}

sub doDayB {
    ABSTRACT METHOD @_;
}

sub doDayC {
    ABSTRACT METHOD @_;
}

sub doReturningTransport {
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
    foreach my $method ( qw( doComingTransport doDayA doDayB doDayC doReturningTransport ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
