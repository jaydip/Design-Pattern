# ConcreteProduct
package InitFile;
use strict;
use warnings;
use FileOperation;
use Data::Dumper::Simple;
use 5.010;
@InitFile::ISA = qw/ FileOperation /;

sub new {
    my ($class,%args) = @_;
    my $self = bless {},ref($class)||$class;
    $self->{ _filename } = $args{ filename };
    return $self;
}

sub filename {
    my ($self, $val) = @_;
    if ( $val ) {
        $self->{ _filename } = $val;
    }
    else {
        return $self->{ _filename };
    }
}

sub open_file {
    my ($self,$file) = @_;
    $self->filename( $file ) if $file;
}

sub read_file_data {
    my ($self) = @_;
    my $str;
    open FILE,"<",$self->filename;
    while ( my $line = <FILE> ) {
        $str .= $line;
    }
    return $str;
}

sub write_file_data {
    my ($self,$data) = @_;
    open FILE,">",$self->filename;
    print FILE $data;
    print "Successfully write data to file.";
}
1;
