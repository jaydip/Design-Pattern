package ConcreteIterator;
use strict;
use warnings;
use Iterator;
use Data::Dumper::Simple;
@ConcreteIterator::ISA = qw / Iterator /;

my $aggregate;
my $current = 0;

sub new {
    my ($class,$agt) = @_;
    my $self = bless {}, ref($class) || $class;
    $aggregate = $agt;
    return $self;
}

sub First {
    my ($self) = @_;
    return $aggregate->this(0);
}

sub Next {
    my ($self) = @_;
    my $ret;
    if($current < $aggregate->count()-1 ) {
        $ret = $aggregate->this(++$current);
    }
    return $ret;
}

sub CurrentItem {
    my ($self) = @_;
    return $aggregate->this($current);
}

sub IsDone {
    my ($self) = @_;
    return $current >= $aggregate->count ? "true" : "false";
}
1;
