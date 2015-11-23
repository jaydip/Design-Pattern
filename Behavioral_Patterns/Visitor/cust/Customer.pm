package Customer;
use strict;
use warnings;
use IVisitable;
@Customer::ISA = qw / IVisitable /;

my @orders;

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
    foreach my $x (@orders) {
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

sub addOrder {
    my ($self,$val) = @_;
    push @orders, $val;
}

sub Customer {
    my ($self,$val) = @_;
    $self->{ _name } = $val;
}

1;
