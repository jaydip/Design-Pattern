#! usr/local/bin/perl
use strict;
use warnings;
use Customer;
use Order;
use GeneralReport;
use Item;
use CustomerGroup;


my $c = Customer->new("Customer 1");
$c->addOrder( Order->new('.Order 1', '..item 1') );
$c->addOrder( Order->new('.Order 2', '..item 1') );
$c->addOrder( Order->new('.Order 3', '..item 1') );

my $c2 = Customer->new("Customer 2");
my $o  = Order->new('.order _a');
$o->addItem( Item->new('..item_a1') );
$o->addItem( Item->new('..item_a2') );
$o->addItem( Item->new('..item_a3') );
$c2->addOrder($o);
$c2->addOrder( Order->new('.order_b', '..item_b1') );

my $customers = CustomerGroup->new();
$customers->addCustomer($c);
$customers->addCustomer($c2);

my $visitor = GeneralReport->new();
$visitor->displayResults();
