package ConcreteBuilder2;
use strict;
use warnings;
use AbstractBuilder;
use Product;
@ConcreteBuilder2::ISA = qw / AbstractBuilder /;

sub new {
    my ($class, %args) = @_;
    my $self = bless {},ref($class)||$class;
    $self->{ _product } = Product->new();
    $self->{ _part_a } = $args{ part_a };
    $self->{ _part_b } = $args{ part_b };
    $self->AbstractBuilder::new();
    return $self;
}

sub build_part_a {
    my ($self) = @_;
    my $product = $self->{ _product };
    my $part = $self->{ _part_a };
    $product->add( $part );
}

sub build_part_b {
    my ($self) = @_;
    my $product = $self->{ _product };
    my $part = $self->{ _part_b };
    $product->add( $part );
}

sub get_result {
    my ($self) = @_;
    my $product = $self->{ _product };
    return $product;
}
1;
