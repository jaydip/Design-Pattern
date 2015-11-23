package ConcreteColleague2;
use strict;
use warnings;
use Colleague;
@ConcreteColleague2::ISA = qw / Colleague /;

my $mediator;
sub new {
    my ($class,$mediator1) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Colleague::new($mediator1);
    $mediator = $mediator1;
    return $self;
}

sub send {
    my ($self, $message) = @_;
    $mediator->send($message,$self);
}

sub notify {
    my ($self, $message) = @_;
    print "Colleague2 gets message: $message\n";
}
1;
