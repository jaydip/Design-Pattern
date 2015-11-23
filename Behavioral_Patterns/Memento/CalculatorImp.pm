# Originator Implementation
package CalculatorImp;
use strict;
use warnings;
use PreviousCalculationImp;
use Calculator;
use Data::Dumper::Simple;
@CalculatorImp::ISA = qw / Calculator /;

my $firstNumber = 0;
my $secondNumber = 0;

sub new {
    my($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Calculator::new();
    return $self;
}

sub backupLastCalculation {
    my ($self) = @_;
    return PreviousCalculationImp->new($firstNumber,$secondNumber);
}

sub getCalculationResult {
    my ($self) = @_;
    return $firstNumber + $secondNumber;
}

sub restorePreviousCalculation {
    my ($self,$memento) = @_;
    $firstNumber = $memento->firstNumber();
    $secondNumber = $memento->secondNumber();
}

sub setFirstNumber {
    my ($self,$val) = @_;
    $firstNumber = $val;
}

sub setSecondNumber {
    my ($self,$val) = @_;
    $secondNumber = $val;
}
1;
