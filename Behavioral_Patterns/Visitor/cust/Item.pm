package Item;
use strict;
use warnings;
use IVisitable;
@Item::ISA = qw / IVisitable /;

my @items;

sub new {
    my ($class, $name) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _name } = $name;
    $self->IVisitable::new();
    return $self;
}

sub accept {
    my ($self,$visitor) = @_;
    $visitor->visit($self);
}

sub name {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _name } = $val;
    }
    else {
        $self->{ _name };
    }
}
1;

