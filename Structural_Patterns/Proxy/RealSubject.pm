package RealSubject;
use strict;
use warnings;
use Subject;
@RealSubject::ISA = qw / Subject /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub request {
    print 'Called RealSubject.request()',"\n";
}
1;
