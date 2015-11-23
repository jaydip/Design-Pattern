# Factory
package AbstractCreate;
use strict;
use warnings;

sub new {
    my ($self) = @_;
}

sub read_data {
    # Abstract Method
}

sub write_data {
    # Abstract Method
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( read_data write_data ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
