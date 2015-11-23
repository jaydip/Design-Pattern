# Prototype
package Rectangle;
use strict;
use warnings;

sub new {
    my ($self) = @_;
    $self->{ _width } = 0;
    $self->{ _height } = 0;
}

sub width {
    my ($self,$val) = @_;
    if ($val) {
        $self->{ _width } = $val;
    }
    else {
        return $self->{ _width };
    }
}

sub height {
    my ($self,$val) = @_;
    if ($val) {
        $self->{ _height } = $val;
    }
    else {
        return $self->{ _height };
    }
}

sub print_me {
    my ($self) = @_;
    print "Width  : ",$self->width,"\n";
    print "Height : ",$self->height,"\n";
}
1;
