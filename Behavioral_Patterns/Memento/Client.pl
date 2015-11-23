#! usr/local/bin/perl
use strict;
use warnings;
use CalculatorImp;

my $calculator = CalculatorImp->new();


$calculator->setFirstNumber(10);
$calculator->setSecondNumber(100);

print $calculator->getCalculationResult(),"\n";

my $memento = $calculator->backupLastCalculation();
$calculator->setFirstNumber(17);

$calculator->setSecondNumber(-219);

print $calculator->getCalculationResult(),"\n";

$calculator->restorePreviousCalculation($memento);

print $calculator->getCalculationResult(),"\n";
