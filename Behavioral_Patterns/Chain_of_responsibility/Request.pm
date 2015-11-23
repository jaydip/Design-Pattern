# RequestHandler
package Request;
use strict;
use warnings;

sub new {
    my ($class,@arr) = @_;
    my $self = bless {}, ref($class)||$class;
    $self->{ _value } = $arr[1];
    $self->{ _desc } = $arr[0];
    return $self;
}

sub get_value {
    my ($self,$val) = @_;
    return $self->{ _value };
}

sub get_desc {
    my ($self) = @_;
    return $self->{ _desc };
}
1;
