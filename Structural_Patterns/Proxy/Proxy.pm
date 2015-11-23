package Proxy;
use strict;
use warnings;
use Subject;
use RealSubject;
@Proxy::ISA = qw / Subject /;

my $realSubject;
sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub request {
    unless ( $realSubject ) {
        $realSubject = RealSubject->new();
    }
    $realSubject->request();
}
1;
