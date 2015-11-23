package Decorator;
use strict;
use warnings;
use Component;
@Decorator::ISA = qw / Component /;

sub new {
    my ($self) = @_;
}

sub set_component {
    my ($self, $c) = @_;
    $self->{ _component } = $c;
}

sub operation {
    my ($self) = @_;
    my $component = $self->{ _component };
    if ( $component ) {
        $component->operation();
    }
}
1;
