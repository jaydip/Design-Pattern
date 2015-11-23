package Colleague;
use strict;
use warnings;

my $mediator;

sub new {
    my ($self) = @_;
}

sub Colleague {
    my ($self, $mediator1) = @_;
    $mediator = $mediator1;
}
1;
