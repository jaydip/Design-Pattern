package Iterator;
use strict;
use warnings;

sub new {
    my ($self) = @_;
}

sub First {
    ABSTRACT METHOD @_;
}

sub Next {
    ABSTRACT METHOD @_;
}

sub IsDone {
    ABSTRACT METHOD @_;
}

sub CurrentItem {
    ABSTRACT METHOD @_;
}

1;
