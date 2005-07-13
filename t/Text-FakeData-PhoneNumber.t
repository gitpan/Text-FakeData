use Test::More tests => 2;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('PhoneNumber');
ok($faker->$_(),$_) for $faker->methods;
