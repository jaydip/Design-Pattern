#! usr/local/bin/perl
use strict;
use warnings;
use ThousandExpression;
use HundredExpression;
use TenExpression;
use OneExpression;
use Context;
use Data::Dumper::Simple;

my $roman = 'MCMXXVIII';
my $obj = Context->new($roman);
my @tree;

push @tree,ThousandExpression->new();
push @tree,HundredExpression->new();
push @tree,TenExpression->new();
push @tree,OneExpression->new();

foreach my $x (@tree) {
    my $exp = $x;
    $exp->interpret($obj);
}

print $obj->output();
