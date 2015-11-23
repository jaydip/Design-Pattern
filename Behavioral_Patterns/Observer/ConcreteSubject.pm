package ConcreteSubject;
use strict;
use warnings;
use Subject;
@ConcreteSubject::ISA = qw / Subject /;

sub new {
    my ($class) = @_;
    my $self = bless {}, ref($class) || $class;
    $self->Subject::new();
    $self->{ _subjectState } = "";
    return $self;
}

sub SubjectState {
    my ($self, $val) = @_;
    if ( $val ) {
        $self->{ _subjectState } = $val;
    }
    else {
        return $self->{ _subjectState };
    }
}
1;
