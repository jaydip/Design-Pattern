package HundredExpression;
use strict;
use warnings;
use Expression;
@HundredExpression::ISA = qw / Expression /;

sub new {
    my ($class,$input) = @_;
    my $self = bless {}, ref ($class) || $class;
    $self->Expression::new();
    return $self;
}

sub one {
    my ($self) = @_;
    return "C";
}

sub four {
    my ($self) = @_;
    return "CD";
}

sub five {
    my ($self) = @_;
    return "D";
}

sub nine {
    my ($self) = @_;
    return "DM";
}

sub multiplier {
    my ($self) = @_;
    return 100;
}    
1;
