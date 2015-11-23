package ProductA2;
use strict;
use warnings;
use 5.010;
use AbstractProductA;
@ProductA2::ISA = qw / AbstractProductA /;

sub new {
    my ($self, %args) = @_;
    $self->AbstractProductA::new();
    $self->{ _ProductA2 } = $args{ productA2_name };
}

sub operationA1 {
    print "op1";
}

sub operationA2 {
    print "op2";
}
1;
