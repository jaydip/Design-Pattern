package Order;
use strict;
use warnings;
use IVisitable;
@Order::ISA = qw / IVisitable /;

my @items;

sub new {
    my ($class, $name, $itemName) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _name } = $name;
    $self->addItem( Item->new($itemName) )  if $itemName;
    $self->IVisitable::new();
    return $self;
}

sub accept {
    my ($self,$visitor) = @_;
    $visitor->visit($self);
    foreach my $x (@items) {
        $x->accept($visitor);
    }
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

sub addItem {
    my ($self,$val) = @_;
    push @items, $val;
}
1;

