package Director;
use strict;
use warnings;
use ConcreteBuilder1;
use ConcreteBuilder2;

sub new {
    my ($class,$type) = @_;
    my $self = bless {},ref($class)||$class;
    return $self;
}

sub construct {
    my ($self,$builder) = @_;
    $builder->build_part_a();
    $builder->build_part_b();
}
1;
