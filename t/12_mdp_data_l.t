# Copyright (c) 2022-2023 Martin Becker, Blaubeuren.
# This package is free software; you can distribute it and/or modify it
# under the terms of the Artistic License 2.0 (see LICENSE file).

# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl 12_mdp_data_l.t'

#########################

use strict;
use warnings;
use FindBin;
use File::Spec;
use Test::More tests => 3;

use Math::DifferenceSet::Planar 1.000;

require_ok('Math::DifferenceSet::Planar::Data::L');

my ($vol, $dirs) = File::Spec->splitpath($FindBin::RealBin, 1);
my @comp         = File::Spec->splitdir($dirs);
$comp[-1]        = 'share';
$dirs            = File::Spec->catdir(@comp);
my $file         = File::Spec->catpath($vol, $dirs, 'pds_4875.db');

my $count = eval { Math::DifferenceSet::Planar->set_database($file) };
diag($@) if !defined $count;
is($count, 4875, 'size L database available');

my $ds = Math::DifferenceSet::Planar->std_reference(16807);
my $sl = $ds && $ds->lambda;
is($sl, 1, 'std reference 16807');

