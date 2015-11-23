# FlyweightFactory
package Factory;
use strict;
use warnings;
use Gazillion;

my @pool;

sub new {
    my ($class, $r) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub getFlyweight {
    my ($self, $row) = @_;
    if( not defined $pool[ $row ] ) {
        push @pool, Gazillion->new( $row );
    }
    return $pool[ $row ];
}
1;
