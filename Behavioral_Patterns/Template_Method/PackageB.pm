package PackageB;
use strict;
use warnings;
use Trip;
@PackageB::ISA = qw / Trip /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref( $class ) || $class;
    $self->Trip::new();
    return $self;
}

sub doComingTransport {
    my ($self) = @_;
    print "The turists are comming by train ...\n";
}

sub doDayA {
    my ($self) = @_;
    print "The turists are visiting the mountain ...\n";
}

sub doDayB {
    my ($self) = @_;
    print "The turists are going to the beach ...\n";
}
sub doDayC {
    my ($self) = @_;
    print "The turists are going to zoo ...\n";
}
sub doReturningTransport {
    my ($self) = @_;
    print "The turists are going home by train ...\n";
}
1;
