#! usr/local/bin/perl
use strict;
use warnings;
use ConcreteObserver;
use ConcreteSubject;

my $s = ConcreteSubject->new();
$s->Attach( ConcreteObserver->new( $s, "ABC" ) );
$s->Attach( ConcreteObserver->new( $s, "PQR" ) );
$s->Attach( ConcreteObserver->new( $s, "XYZ" ) );

$s->SubjectState("1000");
$s->Notify();
