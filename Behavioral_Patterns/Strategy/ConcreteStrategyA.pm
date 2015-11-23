package ConcreteStrategyA;
use strict;
use warnings;
use Strategy;
@ConcreteStrategyA::ISA = qw / Strategy /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class)||$class;
    $self->Strategy::new();
    return $self;
}

sub AlgorithmInterface {
    print 'Called ConcreteStrategyA.AlgorithmInterface()',"\n";
}
1;
