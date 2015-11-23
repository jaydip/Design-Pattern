# Handler
package Handler;
use strict;
use warnings;
use Carp;

my $obj;
sub new {
    my ($self) = @_;
    return bless {},$self;
}

sub setSuccessor {
    my ($self, $successor) = @_;
    $obj = $successor;
}

sub handleRequest { 
    print "Non-negative values are handled by Handler\n";
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( handleRequest ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
