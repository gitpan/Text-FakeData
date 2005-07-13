use Test::More tests => 20;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('DateTime');
ok($faker->$_(),$_) for $faker->methods;
