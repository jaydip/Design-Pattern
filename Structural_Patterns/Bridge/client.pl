#! usr/local/bin/perl
use strict;
use warnings;
use FileSystemPersistenceImplementor;
use DabatasePersistenceImplementor;
use Data::Dumper::Simple;
use PersistenceImp;
use TestClass;

print "1. DATABASE  2. FILE  \nEnter Choice : ";
chomp( my $choice = <STDIN> );

my $implementor;

if ( $choice == 1 ) {
    $implementor = DabatasePersistenceImplementor->new();
}
elsif ( $choice == 2 ) {
    $implementor = FileSystemPersistenceImplementor->new();
}
else {
    die("Bad Choice\n");
}

my $persistenceAPI = PersistenceImp->new($implementor);

my $obj = TestClass->new("pqr","18");
my $id;

$id = $persistenceAPI->persist($obj);
print "ID : $id\n";


my $o = $persistenceAPI->find_by_id(8);
print Dumper $o;
$o->print_me();

$persistenceAPI->delete_by_id($id);
print "Deleted ID : $id\n";
