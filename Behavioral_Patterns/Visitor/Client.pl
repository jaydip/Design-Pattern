#! usr/local/bin/perl
use strict;
use warnings;
use ObjectStructure;
use ConcreteElementA;
use ConcreteElementB;
use ConcreteVisitor1;
use ConcreteVisitor2;

my $o = ObjectStructure->new();
$o->Attach( ConcreteElementA->new() );
$o->Attach( ConcreteElementB->new() );

my $v1 = ConcreteVisitor1->new();
my $v2 = ConcreteVisitor2->new();

$o->Accept($v1);
$o->Accept($v2);
