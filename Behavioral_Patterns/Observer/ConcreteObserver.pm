package ConcreteObserver;
use strict;
use warnings;
use Observer;
@ConcreteObserver::ISA = qw / Observer /;


my $observerState;
my $subject;

sub new {
    my ($class, $subject1, $name1) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Observer::new();
    $self->{ _name } = $name1;
    $subject = $subject1;
    return $self;
}

sub Update {
    my ($self) = @_;
    $observerState = $subject->SubjectState();
    print "Observer ",$self->name,"'s new state is {$observerState}\n";
}

sub name {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _name } = $val;
    }
    else {
        return $self->{ _name };
    }
}


sub Subject {
    my ($self,$val) = @_;
    if ( $val ) {
        $subject = $val;
    }
    else {
        return $subject;
    }
}
1;
