package Math::DifferenceSet::Planar::Data::L;

use 5.010000;
use strict;
use warnings;

our $VERSION = '1.000';

1;
__END__

=head1 NAME

Math::DifferenceSet::Planar::Data::L - data extension for M::DS::P

=head1 SYNOPSIS

  # no user-code-facing API

=head1 DESCRIPTION

With this module installed, Math::DifferenceSet::Planar will have access
to an additional database of sample difference sets, C<pds_4875.db>.
It extends the default collection of samples up to order 46337 (modulus
slightly below 2 ** 31).  This covers exactly the orders that can be
handled on platforms with 32 bit perl integers.

All sample sets come with standard references and rotator spaces.
Currently, 1394 small sets also have lex references and 644 small sets
have gap references.

=head1 SEE ALSO

See L<Math::DifferenceSet::Planar> for definitions and conventions.
The base module comes with 604 difference sets up to order 4096.

=head2 Other data extensions

=over 4

=item L<Math::DifferenceSet::Planar::Data::M>

1961 sets up to order 16384.

=item L<Math::DifferenceSet::Planar::Data::XL>

12400 sets up to order 131449 and some sets with millions of elements.

=back

=head1 AUTHOR

Martin Becker, E<lt>becker-cpan-mp I<at> cozap.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2022-2023 by Martin Becker, Blaubeuren.

This library is free software; you can distribute it and/or modify it
under the terms of the Artistic License 2.0 (see the LICENSE file).

=head1 DISCLAIMER OF WARRANTY

This library is distributed in the hope that it will be useful, but
without any warranty; without even the implied warranty of merchantability
or fitness for a particular purpose.

=cut
