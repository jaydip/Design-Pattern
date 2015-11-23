#! usr/local/bin/perl
use strict;
use warnings;
use MyDBI;

my $dbh = MyDBI->new();

my $obj = MyDBI->new();
my $exists_obj = MyDBI->exists_dbh( $obj );
print "MyDBI object : $exists_obj\n";
