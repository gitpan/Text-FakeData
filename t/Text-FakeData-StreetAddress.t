use Test::More tests => 14;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('StreetAddress');
ok($faker->$_(),$_) for $faker->methods;
