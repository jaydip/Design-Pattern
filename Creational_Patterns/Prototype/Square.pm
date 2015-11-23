# Concreate Prototype
package Square;
use strict;
use warnings;
use Rectangle;
@Square::ISA = qw / Rectangle /;

sub new {
    my ($class) = @_;
    my $self = bless {},ref($class)||$class;
    $self->Rectangle::new();
    return $self;
}

sub width {
    my ($self,$val) = @_;
    if ($val) {
        $self->{ _width } = $val;
        $self->{ _height } = $val;
    }
    else {
        return $self->{ _width };
    }
}

sub height {
    my ($self,$val) = @_;
    if ($val) {
        $self->{ _height } = $val;
        $self->{ _width } = $val;
    }
    else {
        return $self->{ _height };
    }
}
1;
