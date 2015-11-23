#! usr/local/bin/perl
use strict;
use warnings;
use Factory;

my $factory = Factory->new();


my $product1 = $factory->new_product();
my $product2 = $factory->new_product(
                                          name        => 'Pendrive'
                  );

my $product3 = $factory->new_product(
                                          name        => 'Mouse',
                                          description => 'wireless mouse'
                  );

my $product4 = $factory->new_product(
                                          name        => 'Laptop',
                                          description => 'lenovo G500 series',
                                          rate        => '45000'
                  );

$product1->print_me();
$product2->print_me();
$product3->print_me();
$product4->print_me();
