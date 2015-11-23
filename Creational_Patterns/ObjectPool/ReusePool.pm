# Reusable Pool
package ReusePool;
use strict;
use warnings;
use Reusable;
use Data::Dumper::Simple;
use 5.010;

state $obj;
sub new {
    my ($class, %argv) = @_;
    $obj = Reusable->new( %argv );
    return $obj;
}
1;
