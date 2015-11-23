package ConcreteStrategyB;
use strict;
use warnings;
use Strategy;
@ConcreteStrategyB::ISA = qw / Strategy /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class)||$class;
    $self->Strategy::new();
    return $self;
}

sub AlgorithmInterface {
    print 'Called ConcreteStrategyB.AlgorithmInterface()',"\n";
}
1;
