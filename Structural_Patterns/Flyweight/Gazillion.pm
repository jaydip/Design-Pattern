# ConcreteFlyweight
package Gazillion;
use strict;
use warnings;
use AbstractGazillion;
@Gazillion::ISA = qw / AbstractGazillion /;

sub new {
    my ($class, $r) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _row } = $r; 
    print "ctor: ",$self->{ _row },"\n";
    return $self;
}

sub report {
    my ($self, $col) = @_;
    print " ",$self->{ _row },"$col";
}
1;
