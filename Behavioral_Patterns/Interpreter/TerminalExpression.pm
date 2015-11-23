package TerminalExpression;
use strict;
use warnings;
use AbstractExpression;
@TerminalExpression::ISA = qw / AbstractExpression /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->AbstractExpression::new();
    return $self;
}

sub Interpret {
    my ($self,$contex) = @_;
    print "Called Terminal.Interpret()\n";
}
1;
