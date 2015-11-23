package ConcreteComponent;
use strict;
use warnings;
use Component;
@ConcreteComponent::ISA = qw / Component /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Component::new();
    return $self;
}

sub operation {
    my ($self) = @_;
    print 'ConcreteComponent.Operation()',"\n";
}
1;
