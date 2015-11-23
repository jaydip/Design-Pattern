#! usr/local/bin/perl
use strict;
use warnings;
use Request;
use ConcreteHandlerOne;
use ConcreteHandlerTwo;
use ConcreteHandlerThree;
use Data::Dumper::Simple;
use 5.010;

my $h1 = ConcreteHandlerOne->new();
my $h2 = ConcreteHandlerTwo->new();
my $h3 = ConcreteHandlerThree->new();


$h1->setSuccessor($h2);
$h2->setSuccessor($h3);

$h1->handleRequest( Request->new( "Negative Value ", -1) );
$h1->handleRequest( Request->new( "Negative Value ", 0) );
$h1->handleRequest( Request->new( "Negative Value ", 1) );
$h1->handleRequest( Request->new( "Negative Value ", 2) );
$h1->handleRequest( Request->new( "Negative Value ", -5) );
