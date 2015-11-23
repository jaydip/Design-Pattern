package Realclass;
use strict;
use warnings;
use AbstractClass;
@Realclass::ISA = qw / AbstractClass /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub print_me {
    my ($self, $message) = @_;
    print $message,"\n";
}
1;
