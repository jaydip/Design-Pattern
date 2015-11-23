#! usr/local/bin/perl
use strict;
use warnings;
use Contex;
use TerminalExpression;
use NonterminalExpression;

my @list;
my $contex = Contex->new();

push @list, TerminalExpression->new();
push @list, NonterminalExpression->new();
push @list, TerminalExpression->new();
push @list, TerminalExpression->new();

foreach my $x (@list) {
    $x->Interpret($contex);
}
