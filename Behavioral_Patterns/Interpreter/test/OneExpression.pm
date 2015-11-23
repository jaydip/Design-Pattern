package OneExpression;
use strict;
use warnings;
use Expression;
@OneExpression::ISA = qw / Expression /;

sub new {
    my ($class,$input) = @_;
    my $self = bless {}, ref ($class) || $class;
    $self->Expression::new();
    return $self;
}

sub one {
    my ($self) = @_;
    return "I";
}

sub four {
    my ($self) = @_;
    return "IV";
}

sub five {
    my ($self) = @_;
    return "V";
}

sub nine {
    my ($self) = @_;
    return "IX";
}

sub multiplier {
    my ($self) = @_;
    return 1;
}    
1;
