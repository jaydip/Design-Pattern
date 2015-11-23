# Command
package Order;
use strict;
use warnings;
use Carp;

sub new {
    my ($self) = @_;
}

sub execute {
    ABSTRACT METHOD @_;
}

sub METHOD::ABSTRACT
{
    my ($self) = @_;
    my $object_class = ref($self);
    my ($file, $line, $method) = (caller(1))[1..3];
    my $loc = "at $file, line $line\n";
    print "call to abstract method ${method} $loc";
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( execute ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
