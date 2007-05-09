use inc::Module::Install;
name 'Number-Object';
all_from 'lib/Number/Object.pm';

requires $_ for (qw/
    Carp::Clan
    Class::Component
    Class::Inspector
    String::CamelCase
    UNIVERSAL::require
/);

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
