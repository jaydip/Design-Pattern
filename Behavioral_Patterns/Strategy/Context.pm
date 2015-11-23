package Context;
use strict;
use warnings;

my $strategy;

sub new {
    my ($class,$st) = @_;
    $strategy = $st;
    return bless {}, ref($class)||$class;
}

sub ContextInterface {
    $strategy->AlgorithmInterface();
}
1;
