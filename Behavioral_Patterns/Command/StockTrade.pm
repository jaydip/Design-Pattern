# receiver
package StockTrade;
use strict;
use warnings;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class)||$class;
    return $self;
}

sub buy {
    print "You want to buy stocks\n";
}

sub sell {
    print "You want to sell stocks\n";
}
1;
