package Product;
use strict;
use warnings;

sub new {
    my ($class,$type) = @_;
    my $self = bless {},ref($class)||$class;
    $self->{ parts } = [];
    return $self;
}

sub add {
    my ($self, $part) = @_;
    push @{$self->{ parts }},$part;
}

sub show {
    my ($self) = @_;
    print "\nProduct Part -------------\n";
    foreach my $part ( @{ $self->{ parts } } ) {
        print "$part\n";
    }
}
1;
