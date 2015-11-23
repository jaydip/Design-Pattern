# Concrete Command
package SellStockOrder;
use strict;
use warnings;
use Order;
@SellStockOrder::ISA = qw / Order /;

my $stock;
sub new {  
    my ($class,$st) = @_;
    $stock = $st;
    return bless {},$class;
}

sub execute {
    $stock->sell();
}
1;
