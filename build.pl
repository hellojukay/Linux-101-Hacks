#!/bin/perl
use strict;
use warnings;

my @logs = glob "*.log";
my @auxs = glob "*.aux";

sub delete_file(@){
    foreach my $file (@_){
        unlink $file;
    }
}
sub build_pdf(@){
    my $file = $_[0];
    system("xelatex $file");
}
build_pdf "main.tex";
delete_file @logs;
delete_file @auxs;
