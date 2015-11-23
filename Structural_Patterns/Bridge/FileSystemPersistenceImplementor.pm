# ConcreteImplementor2
package FileSystemPersistenceImplementor;
use strict;
use warnings;
use Data::Dumper::Simple;
use DB_File;
use Fcntl;
use Storable qw(freeze thaw);
use PersistenceImplementor;
@FileSystemPersistenceImplementor::ISA = qw / PersistenceImplementor /;

my %pers_db;

sub new {
    my ($class, $imp) = @_;
    my $self = bless {}, ref($class) || $class;
    tie %pers_db, "DB_File", "persistent.db", O_CREAT|O_RDWR, 0640, $DB_HASH;
    $pers_db{ "id" } = 1 if not defined  $pers_db{ "id" };
    return $self;
}

sub delete_object {
    my ($self, $objectId) = @_;
    $pers_db{ $objectId } = undef;
}

sub get_object {
    my ($self, $objectId) = @_;
    return thaw($pers_db{ $objectId });
}

sub save_object {
    my ($self, $object) = @_;
    my $id = $pers_db{ "id" }++;
    $pers_db{ $id } = freeze($object);
    return $id;
}
1;
