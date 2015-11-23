package TestClass;
use strict;
use warnings;

sub new {
    my ($class,$name,$age) = @_;
    return bless { 
        _name => $name,
        _age  => $age
    },$class;
}

sub print_me {
    my ($self) = @_;
    print "Name : ",$self->{ _name },"\n";
    print "Age  : ",$self->{ _age },"\n";
}
1;
