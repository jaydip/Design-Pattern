#! usr/local/bin/perl
use strict;
use warnings;
use Context;
use ConcreteStrategyA;
use ConcreteStrategyB;
use ConcreteStrategyC;


my $context;

$context = Context->new( ConcreteStrategyA->new() );
$context->ContextInterface();

$context = Context->new( ConcreteStrategyB->new() );
$context->ContextInterface();

$context = Context->new( ConcreteStrategyC->new() );
$context->ContextInterface();
