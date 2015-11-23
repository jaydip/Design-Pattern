package Subject;
use strict;
use warnings;

my @observers;

sub new {
    my ($self) = @_;
}

sub Attach {
    my ($self, $obj) = @_;
    push @observers, $obj;
}

sub Detach {
    my ($self, $obj) = @_;
    pop @observers;
}

sub Notify {
    my ($self) = @_;
    foreach my $x (@observers) {
        $x->Update();
    }
}
1;
