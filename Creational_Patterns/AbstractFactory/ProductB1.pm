package ProductB1;
use strict;
use warnings;
use 5.010;
use AbstractProductB;
@ProductB1::ISA = qw / AbstractProductB /;

sub new {
    my ($self, %args) = @_;
    $self->AbstractProductB::new();
    $self->{ _ProductB1 } = $args{ productB1_name };
}

sub operationB1 {
    print "op1";
}

sub operationB2 {
    print "op2";
}
1;
