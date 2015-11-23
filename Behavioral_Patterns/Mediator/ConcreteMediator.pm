package ConcreteMediator;
use strict;
use warnings;
use Mediator;
@ConcreteMediator::ISA = qw / Mediator /;

my $colleague1;
my $colleague2;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub colleague1 {
    my ($self,$val) = @_;
    if ( $val ) {
        $colleague1 = $val;
    }
    else {
        return $colleague1;
    }
}

sub colleague2 {
    my ($self,$val) = @_;
    if ( $val ) {
        $colleague2 = $val;
    }
    else {
        return $colleague2;
    }
}

sub send {
    my ($self,$message,$colleague) = @_;
    if( $colleague == $self->colleague1 ) {
        $colleague2->notify($message);
    }
    else {
        $colleague1->notify($message);
    }
}
1;
