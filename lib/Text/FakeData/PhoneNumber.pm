package Text::FakeData::PhoneNumber;
our $VERSION = '0.06';
use base 'Text::FakeData';

=head1 NAME

Text::FakeData::PhoneNumber - Text::FakeData plugin

=head1 SYNOPSIS AND USAGE

See L<Text::FakeData>

=head1 DATA PROVIDERS

=over 4

=item phone_number

Return a fake phone number.

=cut

__PACKAGE__->register_plugin(
	phone_number => [
		'###-###-####',
		'(###)###-####',
		'1-###-###-####',
		'###.###.####',
		'###-###-####',
		'(###)###-####',
		'1-###-###-####',
		'###.###.####',
		'###-###-#### x###',
		'(###)###-#### x###',
		'1-###-###-#### x###',
		'###.###.#### x###',
		'###-###-#### x####',
		'(###)###-#### x####',
		'1-###-###-#### x####',
		'###.###.#### x####',
		'###-###-#### x#####',
		'(###)###-#### x#####',
		'1-###-###-#### x#####',
		'###.###.#### x#####',
	],
);

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
