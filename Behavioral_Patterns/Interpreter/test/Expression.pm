package Expression;
use strict;
use warnings;
use Data::Dumper::Simple;
use Context;


sub new {
    my ($self) = @_;
}

sub interpret {
    my ($self,$context) = @_;
    if (length($context->input()) == 0) {
        return;
    }
    
    if (index( $context->input(), $self->nine() ) != -1) {
        print 9 * $self->multiplier(),"\n";
        $context->output( $context->output() + (9 * $self->multiplier()));
        $context->input( substr($context->input(),2));
    }
    elsif ( index( $context->input(), $self->four() ) != -1 ) {
        print 4 * $self->multiplier(),"\n";
        $context->output($context->output() + (4 * $self->multiplier()));
        $context->input(substr($context->input(),2));
    }
    elsif (index( $context->input(), $self->five() )  != -1) {
        print 5 * $self->multiplier(),"\n";
        $context->output($context->output() + (5 * $self->multiplier()));
        $context->input( substr($context->input(),1));
    }
    
    while (index( $context->input(), $self->one() )  != -1) {
        $context->output($context->output() + (1 * $self->multiplier()));
        $context->input( substr($context->input(),1));
    }
}

sub one {
    ABSTRACT METHOD @_;
}

sub four{
    ABSTRACT METHOD @_;
}

sub five {
    ABSTRACT METHOD @_;
}

sub nine {
    ABSTRACT METHOD @_;
}

sub multiplier {
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
    foreach my $method ( qw( one four five nine multiplier ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
