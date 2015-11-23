package ConcreteVisitor1;
use strict;
use warnings;
use Visitor;
@ConcreteVisitor1::ISA = qw / Visitor /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub VisitConcreteElementA {
    my ($self, $concreteElementA) = @_;
    print ref($concreteElementA)," visited by ",ref($self),"\n";
}

sub VisitConcreteElementB {
    my ($self, $concreteElementB) = @_;
    print ref($concreteElementB)," visited by ",ref($self),"\n";
}
1;
