# Concrete Command
package BuyStockOrder;
use strict;
use warnings;
use Order;
@BuyStockOrder::ISA = qw / Order /;

my $stock;
sub new {  
    my ($class,$st) = @_;
    $stock = $st;
    return bless {},$class;
}

sub execute {
    $stock->buy();
}
1;
