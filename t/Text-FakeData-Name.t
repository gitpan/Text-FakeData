use Test::More tests => 6;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('Name');
ok($faker->$_(),$_) for $faker->methods;
