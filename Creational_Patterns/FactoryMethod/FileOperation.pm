# Product
package FileOperation;
use strict;
use warnings;

sub new {
    my ($class) = @_;
    bless {},$class;
}

sub open_file {
    ABSTRACT METHOD @_;
}

sub read_file_data {
    ABSTRACT METHOD @_;
}

sub write_file_data {
    ABSTRACT METHOD @_;
}

sub METHOD::ABSTRACT
{
    my ($self) = @_;
    my $object_class = ref($self);
    my ($file, $line, $method) = (caller(1))[1..3];
    my $loc = "at $file, line $line\n";
    die "call to abstract method ${method} $loc";
}

sub import {
    my ($class) = @_;
    return if $class eq __PACKAGE__;
    foreach my $method ( qw( open_file read_file_data write_file_data ) ) {
        $class->can($method) or croak("Class $class does not define method $method");
    }
}
1;
