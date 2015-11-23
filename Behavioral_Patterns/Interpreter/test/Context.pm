package Context;
use strict;
use warnings;

sub new {
    my ($class,$input) = @_;
    my $self = bless {}, ref ($class) || $class;
    $self->{ _input }  = $input;
    $self->{ _output } = 0;
    return $self;
}

sub input {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _input } = $val;
    }
    else {
        return $self->{ _input };
    }
}

sub output {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _output } = $val;
    }
    else {
        return $self->{ _output };
    }
}
1;
