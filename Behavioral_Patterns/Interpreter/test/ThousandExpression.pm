package ThousandExpression;
use strict;
use warnings;
use Expression;
@ThousandExpression::ISA = qw / Expression /;

sub new {
    my ($class,$input) = @_;
    my $self = bless {}, ref ($class) || $class;
    $self->Expression::new();
    return $self;
}

sub one {
    my ($self) = @_;
    return "M";
}

sub four {
    my ($self) = @_;
    return " ";
}

sub five {
    my ($self) = @_;
    return " ";
}

sub nine {
    my ($self) = @_;
    return " ";
}

sub multiplier {
    my ($self) = @_;
    return 1000;
}    
1;
