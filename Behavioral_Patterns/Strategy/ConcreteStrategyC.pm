package ConcreteStrategyC;
use strict;
use warnings;
use Strategy;
@ConcreteStrategyC::ISA = qw / Strategy /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class)||$class;
    $self->Strategy::new();
    return $self;
}

sub AlgorithmInterface {
    print 'Called ConcreteStrategyC.AlgorithmInterface()',"\n";
}
1;
