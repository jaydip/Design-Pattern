package ConcreteDecoratorB;
use strict;
use warnings;
use Decorator;
@ConcreteDecoratorB::ISA = qw / Decorator /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Decorator::new();
    return $self;
}

sub operation {
    my ($self) = @_;
    $self->SUPER::operation();
    &added_behavior();
    print 'ConcreteDecoratorB.Operation()',"\n";
}

sub added_behavior {
    
}
1;

