# Invoker
package Agent;
use strict;
use warnings;
use Agent;
my @ordersQueue;

sub new {
    my ($class) = @_;
    return bless {}, $class;
}

sub placeOrder {
    my ($self,$order) = @_;
    push @ordersQueue,$order;
    $order->execute(shift @ordersQueue);
}
1;
