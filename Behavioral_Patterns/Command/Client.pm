package Client;
use strict;
use warnings;
use StockTrade;
use BuyStockOrder;
use SellStockOrder;
use Agent;

my $stock  = StockTrade->new();
my $bsc    = BuyStockOrder->new($stock);
my $ssc    = SellStockOrder->new($stock);
my $agent  = Agent->new();

$agent->placeOrder($bsc); # Buy  Share
$agent->placeOrder($ssc); # Sell Share
