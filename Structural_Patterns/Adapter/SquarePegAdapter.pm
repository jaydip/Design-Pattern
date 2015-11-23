# Adapter
package SquarePegAdapter;
use strict;
use warnings;
use SquarePeg;

my $sp;

sub new {
    my ($class, $w) = @_;
    my $self = bless {}, ref($class) || $class;
    $sp = SquarePeg->new( $w );
    return $self;
}

sub makeFit {
    my ($self, $rh) = @_;
    my $amount = $sp->width() - $rh->radius() * sqrt(2);
    print "reducing SquarePeg ",$sp->width," by ",(($amount < 0) ? 0 : $amount)," amount\n";
    if ( $amount > 0 ) {
        $sp->width( $sp->width - $amount );
        print "Width is now ",$sp->width(),"\n";
    }
}
1;
