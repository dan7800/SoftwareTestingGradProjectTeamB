#!/usr/bin/perl

use strict;
use Switch;
use XML::Simple; # try using XML::Parser for stream-based parsing - hopefully solve undef $source_line = undef issue
use Data::Dumper;

print "Scanning XML\n";

my $xml_name = ''; # edit to point to XML file
my $findbugs = XMLin($xml_name);
my $outputFile = "findbug_output.csv";

open OUTPUT, ">$outputFile"
    or die "Could not open $outputFile $!";
print OUTPUT "Instance,Pattern,Priority,Confidence,Rank,Warning,Category,File,Line\n";

my $instance = 0;
foreach my $bug_instance ( @{$findbugs->{BugInstance}} )
{
    $instance++; # increment the instance
    
    # extract XML attributes
    my $type = $bug_instance->{type};
    my $priority = $bug_instance->{priority};
    my $rank = $bug_instance->{rank};
    my $category = $bug_instance->{category};
    my $source_line = $bug_instance->{SourceLine};
    my $file;
    my $line;
    
    if( ref( $source_line ) eq 'HASH' )
    {
        $file = $bug_instance->{SourceLine}->{sourcefile};
        $line = $bug_instance->{SourceLine}->{start};
    }
    elsif( ref( $source_line ) eq 'ARRAY' )
    {
        $file = $bug_instance->{SourceLine}->[0]->{sourcefile};
        $line = $bug_instance->{SourceLine}->[0]->{start};
    }
    else
    {
        print Dumper( $source_line );
        $file = "Unknown - Better script needed";
        $line = "Unknown - Better script needed";
    }
    
    # convert priority to confidence
    my $confidence;
    switch( $priority )
    {
        case 1 { $confidence = "High Confidence"; }
        case 2 { $confidence = "Normal Confidence"; }
        case 3 { $confidence = "Low Confidence"; }
        else   { $confidence = "Unknown Confidence"; }
    }
    
    # convert rank to warning
    my $warning;
    if( ( $rank > 0 ) && ( $rank < 5 ) )      { $warning = "Scariest"; }
    elsif( ( $rank > 4 ) && ( $rank < 10 ) )  { $warning = "Scary"; }
    elsif( ( $rank > 9 ) && ( $rank < 15 ) )  { $warning = "Troubling"; }
    elsif( ( $rank > 14 ) && ( $rank < 21 ) ) { $warning = "Of Concern"; }
    else                                      { $warning = "Unknown"; }
    
    # print output
    print OUTPUT "$instance,$type,$priority,$confidence,$rank,$warning,$category,$file,$line\n";
}

print "Finished\n";
