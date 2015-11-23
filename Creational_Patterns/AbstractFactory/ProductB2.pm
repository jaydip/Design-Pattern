package ProductB2;
use strict;
use warnings;
use 5.010;
use AbstractProductB;
@ProductB2::ISA = qw / AbstractProductB /;

sub new {
    my ($self, %args) = @_;
    $self->AbstractProductB::new();
    $self->{ _ProductB2 } = $args{ productB2_name };
}

sub operationB1 {
    print "op1";
}

sub operationB2 {
    print "op2";
}
1;
