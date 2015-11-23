package NonterminalExpression;
use strict;
use warnings;
use AbstractExpression;
@NonterminalExpression::ISA = qw / AbstractExpression /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->AbstractExpression::new();
    return $self;
}

sub Interpret {
    my ($self,$contex) = @_;
    print "Called Nonterminal.Interpret()\n";
}
1;
