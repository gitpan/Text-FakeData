use Test::More tests => 8;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('Company');
ok($faker->$_(),$_) for $faker->methods;
