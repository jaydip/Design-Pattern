package ConcreteProduct;
use strict;
use warnings;
use Product;
@ConcreteProduct::ISA = qw / Product /;


sub new {
    my ( $class, %args) = @_;
    my $self = bless {}, ref( $class ) || $class;
    $self->Product::new();
    $self->createProduct(%args);
    return $self;
}

sub createProduct {
    my ( $self, %args ) = @_;
    $self->id(   $args{ id }          );
    $self->name( $args{ name }        ) if defined $args{ name };
    $self->desc( $args{ description } ) if defined $args{ description };
    $self->rate( $args{ rate }        ) if defined $args{ rate };
}

sub id {
    my ( $self , $val) = @_;
    if ( $val ) {
        $self->{ id } = $val;
    }
    else {
        return $self->{ id };
    }
}

sub name {
    my ( $self, $val ) = @_;
    if ( $val ) {
        $self->{ _name } = $val;
    }
    else {
        return $self->{ _name };
    }
}

sub desc {
    my ( $self, $val ) = @_;
    if ( $val ) {
        $self->{ _desc } = $val;
    }
    else {
        return $self->{ _desc };
    }
}

sub rate {
    my ($self, $val) = @_;
    if ( $val) {
        $self->{ _rate } = $val;
    }
    else {
        return $self->{ _rate };
    }
}



sub print_me {
    my ( $self ) = @_;
    print "\n---------------------------------------------------------\n";
    print "Product ID   : ",$self->id,"\n"   if defined $self->id;
    print "Product Name : ",$self->name,"\n" if defined $self->name;
    print "Product Desc : ",$self->desc,"\n" if defined $self->desc;
    print "Product Rate : ",$self->rate,"\n" if defined $self->rate;
    print "-----------------------------------------------------------\n";
}
1;
