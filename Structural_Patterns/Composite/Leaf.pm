package Leaf;
use strict;
use warnings;
use Component;
@Leaf::ISA = qw / Component /;

sub new {
    my ($class, $name) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Component::new($name);
    return $self;
}

sub add {
    my ($self) = @_;
    print "Cannot add to a leaf\n";
}

sub remove {
    my ($self, $component) = @_;
    print "Cannot remove from a leaf\n";
}

sub display {
    my ($self, $depth) = @_;
    print "-" x $depth,$self->name,"\n";
}
1;

