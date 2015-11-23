#! usr/local/bin/perl
use strict;
use warnings;
use FileCreate;

my $factory = FileCreate->new();

my $file1 = $factory->create_file(
                        filename => "test"
             );

print "Write DATA FROM FILE : \n";
print "Enter File Data : ";
chomp(my $data = <STDIN>);
$factory->write_data($file1,$data);

print "\n\nREAD DATA FROM FILE : \n";
print $factory->read_data($file1),"\n";
