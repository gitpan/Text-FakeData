use Test::More tests => 44;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new();
ok($faker->$_(),$_) for $faker->methods;
