package TenExpression;
use strict;
use warnings;
use Expression;
@TenExpression::ISA = qw / Expression /;

sub new {
    my ($class,$input) = @_;
    my $self = bless {}, ref ($class) || $class;
    $self->Expression::new();
    return $self;
}

sub one {
    my ($self) = @_;
    return "X";
}

sub four {
    my ($self) = @_;
    return "XL";
}

sub five {
    my ($self) = @_;
    return "L";
}

sub nine {
    my ($self) = @_;
    return "XC";
}

sub multiplier {
    my ($self) = @_;
    return 10;
}    
1;
