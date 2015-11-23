# ConcreteFactory
package FileCreate;
use strict;
use warnings;
use InitFile;
use AbstractCreate;
@FileCreate::ISA = qw / AbstractCreate /;

sub new {
    my ($class,%args) = @_;
    my $self = bless {},ref($class)||$class;
    return $self;
}

sub create_file {
    my ($self, %args) = @_;
    return InitFile->new(%args);
}

sub read_data {
    my ($self,$file) = @_;
    return $file->read_file_data;
}

sub write_data {
    my ($self,$file,$filedata) = @_;
    $file->write_file_data( $filedata );
}
1;
