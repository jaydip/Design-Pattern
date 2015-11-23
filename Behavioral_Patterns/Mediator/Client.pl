#! usr/local/bin/perl
use strict;
use warnings;
use ConcreteColleague1;
use ConcreteColleague2;
use ConcreteMediator;

my $m = ConcreteMediator->new();
my $c1 = ConcreteColleague1->new($m);
my $c2 = ConcreteColleague2->new($m);

$m->colleague1($c1);
$m->colleague2($c2);

$c1->send("How are you?\n");
$c2->send("fine, thanks\n");
