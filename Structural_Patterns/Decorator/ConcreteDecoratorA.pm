package ConcreteDecoratorA;
use strict;
use warnings;
use Decorator;
@ConcreteDecoratorA::ISA = qw / Decorator /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Decorator::new();
    return $self;
}

sub operation {
    my ($self) = @_;
    $self->SUPER::operation();
    $self->{ _addedState } = "New State";
    print 'ConcreteDecoratorA.Operation()',"\n";
}
1;

