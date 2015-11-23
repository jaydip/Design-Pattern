package ConcreteElementB;
use strict;
use warnings;
use Element;
@ConcreteElementB::ISA = qw / Element /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub Accept {
    my ($self, $visitor) = @_;
    $visitor->VisitConcreteElementB($self);
}

sub OperationB {
    
}
1;
