package Number::Object::Plugin::Tax;

use strict;
use warnings;
use base 'Class::Component::Plugin';

use POSIX;

our $RATE = '1.05';

sub tax :Method {
    my($self, $c, $args) = @_;
    $c->clone($self->calc($c));
}

sub include_tax :Method {
    my($self, $c, $args) = @_;
    $c->clone($self->calc($c) + $c->{value});
}

sub calc {
    my($self, $c) = @_;
    my $price = $c->{value};

    POSIX::floor($price * ($self->config->{rate} || 0)) - $price;
}

1;
