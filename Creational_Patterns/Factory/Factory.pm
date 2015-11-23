package Factory;
use strict;
use warnings;
use ConcreteProduct;
use 5.010;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _Id } = 1;
    return $self;
}

sub new_product {
    my ($self, %args) = @_;
    $args{ id } = $self->{ _Id }++;
    my $obj = ConcreteProduct->new( %args );
}
1;
