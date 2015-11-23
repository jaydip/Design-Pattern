# Memento implementation
package PreviousCalculationImp;
use strict;
use warnings;
use PreviousCalculationToCareTaker;
use PreviousCalculationToOriginator;
@PreviousCalculationImp::ISA = qw / PreviousCalculationToCareTaker PreviousCalculationToOriginator /;

sub new {
    my($class, $firstNumber, $secondNumber) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _firstNumber } = $firstNumber;
    $self->{ _secondNumber } = $secondNumber;
    return $self;
}

sub firstNumber {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _firstNumber } = $val;
    }
    else {
        return $self->{ _firstNumber };
    }
}

sub secondNumber {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _secondNumber } = $val;
    }
    else {
        return $self->{ _secondNumber };
    }
}
1;
