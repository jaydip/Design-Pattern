package ConcreteFactory2;
use strict;
use warnings;
use ProductA2;
use ProductB2;
use AbstractFactory;

@ConcreteFactory2::ISA = qw / AbstractFactory ProductA2 ProductB2 /;

sub new {
    my ($class, %args) = @_;
    my $self = bless {},ref($class)||$class;
    $self->AbstractFactory::new();
    $self->createProductA(%args);
    $self->createProductB(%args);
    return $self;
}

sub createProductA {
    my ($self, %args) = @_;
    $self->ProductA2::new(%args);
}
sub createProductB {
    my ($self, %args) = @_;
    $self->ProductB2::new(%args);
}
1;
