package Nullclass;
use strict;
use warnings;
use AbstractClass;
@Nullclass::ISA = qw / AbstractClass /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub print_me {
    # NULL implementation
}
1;
