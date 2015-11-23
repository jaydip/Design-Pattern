# Interface Originator
package Calculator;
use strict;
use warnings;

sub new {
    my ($self) = @_;
}

sub backupLastCalculation {
    ABSTRACT METHOD @_;
}

sub restorePreviousCalculation {
    ABSTRACT METHOD @_;
}

sub getCalculationResult {
    ABSTRACT METHOD @_;
}

sub setFirstNumber {
    ABSTRACT METHOD @_;
}

sub setSecondNumber {
    ABSTRACT METHOD @_;
}
1;
