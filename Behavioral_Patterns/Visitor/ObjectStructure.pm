package ObjectStructure;
use strict;
use warnings;

my @elements;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    return $self;
}

sub Attach {
    my ($self, $element) = @_;
    push @elements, $element;
}

sub Detach {
    my ($self) = @_;
    pop @elements;
}

sub Accept {
    my ($self, $visitor) = @_;
    foreach my $x (@elements) {
        $x->Accept($visitor);
    }
}
1;
