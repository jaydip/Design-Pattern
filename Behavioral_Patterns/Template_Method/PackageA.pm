package PackageA;
use strict;
use warnings;
use Trip;
@PackageA::ISA = qw / Trip /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref( $class ) || $class;
    $self->Trip::new();
    return $self;
}

sub doComingTransport {
    my ($self) = @_;
    print "The turists are comming by air ...\n";
}

sub doDayA {
    my ($self) = @_;
    print "The turists are visiting the aquarium ...\n";
}

sub doDayB {
    my ($self) = @_;
    print "The turists are going to the beach ...\n";
}
sub doDayC {
    my ($self) = @_;
    print "The turists are going to mountains ...\n";
}
sub doReturningTransport {
    my ($self) = @_;
    print "The turists are going home by air ...\n";
}
1;
