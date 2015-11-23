package ConcreteAggregate;
use strict;
use warnings;
use Aggregate;
use 5.010;
@ConcreteAggregate::ISA = qw / Aggregate /;

state @items;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub CreateIterator {
    my ($self) = @_;
    return ConcreteAggregate->new();
}

sub count {
    my ($self) = @_;
    return scalar @items;
}

sub this {
    my ($self,$index,$val) = @_;
    if ( $val ) {
        $items[$index] = $val;
    }
    else {
        return $items[$index];
    }
}
1;
