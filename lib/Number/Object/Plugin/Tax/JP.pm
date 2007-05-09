package Number::Object::Plugin::Tax::JP;

use strict;
use warnings;
use base 'Number::Object::Plugin::Tax';

use POSIX;

our $RATE = '1.05';

sub calc {
    my($self, $c) = @_;
    my $price = $c->{value};
    POSIX::floor($price * $RATE) - $price;
}

1;
