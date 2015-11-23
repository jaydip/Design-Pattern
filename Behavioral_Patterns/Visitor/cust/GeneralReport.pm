package GeneralReport;
use strict;
use warnings;
use IVisitor;
@GeneralReport::ISA = qw / IVisitor /;

my $customersNo = 0;
my $ordersNo = 0;
my $itemsNo = 0;

sub new {
    my ($class, $name) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->IVisitor::new();
    return $self;
}

sub visit {
    my ($self,$val) = @_;
    print $val->name(),"\n";
    print "$val\n";
    $customersNo++ if $val eq  "Customer";
    $ordersNo++    if $val eq  "Order";
    $itemsNo++     if $val eq  "Item";
}

sub displayResults {
    my ($self) = @_;
    print "CUSTOMER : $customersNo\n";
    print "ORDER    : $ordersNo\n";
    print "ITEM     : $itemsNo\n";
}
1;
