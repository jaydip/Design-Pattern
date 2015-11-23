# AbstractionImpl
package PersistenceImp;
use strict;
use warnings;
use Persistence;
@PersistenceImp::ISA = qw / Persistence /;

my $implementor;

sub new {
   my ($class, $imp) = @_;
   my $self = bless {}, ref($class) || $class;
   $implementor = $imp;
   return $self;
}

sub delete_by_id {
    my ($self, $id) = @_;
    $implementor->delete_object($id);
}

sub find_by_id {
    my ($self, $objectId) = @_;
    return $implementor->get_object($objectId);
}

sub persist {
    my ($self, $object) = @_;
    return $implementor->save_object($object);
}
1;
