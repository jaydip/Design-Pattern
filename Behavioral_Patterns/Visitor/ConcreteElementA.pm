package ConcreteElementA;
use strict;
use warnings;
use Element;
@ConcreteElementA::ISA = qw / Element /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub Accept {
    my ($self, $visitor) = @_;
    $visitor->VisitConcreteElementA($self);
}

sub OperationA {
    
}
1;
