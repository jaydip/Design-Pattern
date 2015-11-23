package ConcreteFactory1;
use strict;
use warnings;
use ProductA1;
use ProductB1;
use AbstractFactory;

@ConcreteFactory1::ISA = qw / AbstractFactory ProductA1 ProductB1/;

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
    $self->ProductA1::new(%args);
}
sub createProductB {
    my ($self, %args) = @_;
    $self->ProductB1::new(%args);
}
1;
