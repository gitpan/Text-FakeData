package Text::FakeData::StreetAddress;
our $VERSION = '0.06';
use base 'Text::FakeData';
use Text::FakeData::Name;

=head1 NAME

Text::FakeData::StreetAddress - Text::FakeData plugin

=head1 SYNOPSIS AND USAGE

See L<Text::FakeData>

=head1 DATA PROVIDERS

=over 4

=item us_zip_code

Return a random zip or zip+4 zip code in the US zip code format.  Note that
this is not necessarily a valid zip code, just a 5 or 9 digit number in the
correct format.

=cut

__PACKAGE__->register_plugin(
	us_zip_code => ['#####','#####-####'],
);

=item us_state

Return a random US state name.

=cut


__PACKAGE__->register_plugin(
	us_state => [
		qw{
			Alabama Alaska Arizona Arkansas California Colorado Connecticut
			Delaware Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas
			Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota
			Mississippi Missouri Montana Nebraska Nevada Ohio Oklahoma Oregon
			Pennsylvania Tennessee Texas Utah Vermont Virginia Wisconsin
			Wyoming Washington
		},
		'New Hampshire', 'New Jersey', 'New Mexico', 'New York',
		'North Carolina', 'North Dakota', 'Rhode Island', 'South Carolina',
		'South Dakota', 'West Virginia',
	],
);

=item us_state_abbr

Return a random US state abbreviation. (Includes US Territories and AE, AA,
AP military designations.)

From the USPS list at http://www.usps.com/ncsc/lookups/usps_abbreviations.html
=cut

__PACKAGE__->register_plugin(
	us_state_abbr => [qw(
		AL AK AS AZ AR CA CO CT DE DC FM FL GA GU HI ID IL IN IA KS KY
		LA ME MH MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND MP OH OK 
		OR PW PA PR RI SC SD TN TX UT VT VI VA WA WV WI WY AE AA AP
	)],
);

=item street_suffix

Return a random street suffix (Drive, Street, Road, etc.)

From the USPS list at http://www.usps.com/ncsc/lookups/usps_abbreviations.html

=cut

__PACKAGE__->register_plugin(
	street_suffix => [qw(
		Alley Avenue Branch Bridge Brook Brooks Burg Burgs Bypass Camp Canyon 
		Cape Causeway Center Centers Circle Circles Cliff Cliffs Club Common 
		Corner Corners Course Court Courts Cove Coves Creek Crescent Crest 
		Crossing Crossroad Curve Dale Dam Divide Drive Drive Drives Estate
		Estates Expressway Extension Extensions Fall Falls Ferry Field Fields
		Flat Flats Ford Fords Forest Forge Forges Fork Forks Fort Freeway
		Garden Gardens Gateway Glen Glens Green Greens Grove Groves Harbor
		Harbors Haven Heights Highway Hill Hills Hollow Inlet Inlet Island
		Island Islands Islands Isle Isle Junction Junctions Key Keys Knoll
		Knolls Lake Lakes Land Landing Lane Light Lights Loaf Lock Locks Locks 
		Lodge Lodge Loop Mall Manor Manors Meadow Meadows Mews Mill Mills
		Mission Mission Motorway Mount Mountain Mountain Mountains Mountains 
		Neck Orchard Oval Overpass Park Parks Parkway Parkways Pass Passage
		Path Pike Pine Pines Place Plain Plains Plains Plaza Plaza Point Points
		Port Port Ports Ports Prairie Prairie Radial Ramp Ranch Rapid Rapids
		Rest Ridge Ridges River Road Road Roads Roads Route Row Rue Run Shoal
		Shoals Shore Shores Skyway Spring Springs Springs Spur Spurs Square
		Square Squares Squares Station Station Stravenue Stravenue Stream
		Stream Street Street Streets Summit Summit Terrace Throughway Trace
		Track Trafficway Trail Trail Tunnel Tunnel Turnpike Turnpike Underpass
		Union Unions Valley Valleys Via Viaduct View Views Village Village 
		Villages Ville Vista Vista Walk Walks Wall Way Ways Well Wells
	)],
);

=item street_name

Return a fake street name.

=cut


__PACKAGE__->register_plugin(
	street_name	=> [
		'$last_name $street_suffix',
		'$first_name $street_suffix',
	],
);

=item street_address

Return a fake street address.

=cut

__PACKAGE__->register_plugin(
	street_address => [
		'##### $street_name',
		'##### $street_name',
		'##### $street_name',
		'##### $street_name',
		'##### $street_name Apt. ###',
		'##### $street_name Suite ###',
		'##### $street_name \####',
		'##### $secondary_unit_designator',
	],
);

=item secondary_unit_designator

Return a random secondary unit designator, with a range if needed (secondary
unit designators are things like apartment number, building number, suite,
penthouse, etc that differentiate different units with a common address.)

=cut

__PACKAGE__->register_plugin(
	secondary_unit_designator => [
		'Apartment $secondary_unit_number',
		'Building $secondary_unit_number',
		'Department $secondary_unit_number',
		'Floor #', 'Floor ##', 'Floor ###',
		'Floor \##', 'Floor \###', 'Floor \####',
		'Hangar $secondary_unit_number',
		'Lot $secondary_unit_number',
		'Pier $secondary_unit_number',
		'Room $secondary_unit_number',
		'Slip $secondary_unit_number',
		'Space $secondary_unit_number',
		'Stop $secondary_unit_number',
		'Suite $secondary_unit_number',
		'Trailer $secondary_unit_number',
		'Unit $secondary_unit_number',
		'Basement','Front','Lobby','Lower','Office',
		'Penthouse','Rear','Side','Upper',
	],
);

=item secondary_unit_number

Return a random secondary unit number, for the secondary unit designators that
take ranges.

=cut

__PACKAGE__->register_plugin(
	secondary_unit_number => [
		('A' .. 'Z'), '###','\####','##','\###','#','\##',
		'#-A','\##-A','#-B','\##-B','#-C','\##-C','#-D','\##-D','#-E','\##-E',
		'#-F','\##-F','#-G','\##-G','#-H','\##-H','#-I','\##-I','#-J','\##-J',
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
