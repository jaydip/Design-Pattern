package CustomerGroup;
use strict;
use warnings;

my @customers;

sub new {
    my ($class) = @_;
    return bless {}, ref($class) || $class;
}

sub accept {
    my ($self,$visitor) = @_;
    foreach my $x (@customers) {
        $x->accept($visitor);
    }
}

sub addCustomer {
    my ($self,$cust) = @_;
    push @customers,$cust;
}
1;
