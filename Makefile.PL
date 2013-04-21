use inc::Module::Install;
name 'Function-Composition';
all_from 'lib/Function/Composition.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
