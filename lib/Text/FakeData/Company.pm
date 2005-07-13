package Text::FakeData::Company;
our $VERSION = '0.06';
use base 'Text::FakeData';
require Text::FakeData::Name;

=head1 NAME

Text::FakeData::Company - Text::FakeData plugin

=head1 SYNOPSIS AND USAGE

See L<Text::FakeData>

=head1 DATA PROVIDERS

=over 4

=item company

Return a fake company name.

=cut

__PACKAGE__->register_plugin('company' => [
	'$last_name $company_suffix',
	'$last_name-$last_name',
	'$last_name, $last_name and $last_name',
]);

=item company_suffix

Return a company suffix (Inc, LLC, etc).

=cut

__PACKAGE__->register_plugin('company_suffix' => [
	'Inc', 'and Sons', 'LLC', 'Group'
]);

=back

=head1 SEE ALSO

L<Text::FakeData>

=head1 AUTHOR

Jason Kohles, E<lt>email@jasonkohles.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004-2005 by Jason Kohles

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
