# ConcreteImplementor1
package DabatasePersistenceImplementor;
use strict;
use warnings;
use DBI;
use PersistenceImplementor;
use Storable qw(freeze thaw);
@DabatasePersistenceImplementor::ISA = qw / PersistenceImplementor /;


my $dbh;
sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    my $dns = "DBI:mysql:Nirav_Demo:192.168.1.225:3306";
    my $usr = "root";
    my $pass = 'be4us$';
    $dbh = DBI->connect($dns,$usr,$pass,{RaiseError=>1 , AutoCommit=>1}) or die('Not Connected');
    return $self;
}

sub delete_object {
    my ($self, $objectId) = @_;
    $dbh->do("delete from persistent_data where var_name = $objectId");
}

sub get_object {
    my ($self, $objectId) = @_;
    my @arr = $dbh->selectrow_array("select encoding from persistent_data where var_name = $objectId");
    return thaw($arr[0]) if defined $arr[0];
    return undef;
}

sub save_object {
    my ($self, $object) = @_;
    my $encode = freeze($object);
    print freeze($object);
    $dbh->do("insert into persistent_data(encoding) values('$encode')");
    return $dbh->{mysql_insertid};
}
1;
