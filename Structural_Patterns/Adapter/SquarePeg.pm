# Adaptee
package SquarePeg;
use strict;
use warnings;

sub new {
    my ($class, $w) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _width } = $w;
    return $self;
}

sub width {
    my ($self, $val) = @_;
    if ( $val ) {
        $self->{ _width } = $val;
    }
    else {
        return $self->{ _width };
    }
}
1;
