#! usr/local/bin/perl
use strict;
use warnings;
use Leaf;
use Composite;

my $root = Composite->new("root");
$root->add( Leaf->new("Leaf A") );
$root->add( Leaf->new("Leaf B") );

my $comp = Composite->new("Composite X");
$comp->add( Leaf->new("Leaf XA") );
$comp->add( Leaf->new("Leaf XB") );

$root->add($comp);
$root->add( Leaf->new("Leaf C") );

my $leaf = Leaf->new("Leaf D");
$root->add($leaf);
$root->remove($leaf);

$root->display(1);
