# Target
package RoundHole;
use strict;
use warnings;

sub new {
    my ($class, $r) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->{ _radius } = $r;
    print "RoundHole: max SquarePeg is ", $r * sqrt(2),"\n";
    return $self;
}

sub radius {
    my ($self, $val) = @_;
    if ( $val ) {
        $self->{ _radius } = $val;
    }
    else {
        return $self->{ _radius };
    }
}
1;
