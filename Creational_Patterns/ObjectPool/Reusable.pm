# Reusable
package Reusable;
use strict;
use warnings;

sub new {
    my ($class,%argv) = @_;
    my $self = bless {}, ref($class)||$class;
    $self->{ _No1 } = $argv{ no1 };
    $self->{ _No2 } = $argv{ no2 };
    $self->{ _No3 } = $argv{ no3 };
    return $self;
}

sub No1 {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _No1 } = $val;
    }
    else {
        return $self->{ _No1 };
    }
}

sub No2 {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _No2 } = $val;
    }
    else {
        return $self->{ _No2 };
    }
}

sub No3 {
    my ($self,$val) = @_;
    if ( $val ) {
        $self->{ _No3 } = $val;
    }
    else {
        return $self->{ _No3 };
    }
}

sub print_sum {
    my ($self) = @_;
    my $ans = $self->No1 + $self->No2 + $self->No3;
    print "A   = ",$self->No1,"\n";
    print "B   = ",$self->No2,"\n";
    print "C   = ",$self->No3,"\n";
    print "---------\n";
    print "SUM = $ans\n";
    print "--------------------------\n";
}
1;
