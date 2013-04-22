use Modern::Perl;
use Test::More;

use Function::Composition;

sub add_10 {
    map { $_ + 10 } @_;
}

sub multiple_2 {
    map { $_ * 2 } @_;
}

is (
    multiple_2(add_10(1..100)),
    Function::Composition::compose(\&multiple_2, \&add_10)->(1..100),
    "composite function works",
);

done_testing;
