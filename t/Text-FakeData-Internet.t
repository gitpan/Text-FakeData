use Test::More tests => 16;
BEGIN { use_ok('Text::FakeData') };

my $faker = Text::FakeData->new('Internet');
ok($faker->$_(),$_) for $faker->methods;
