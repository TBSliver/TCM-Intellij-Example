package TestsFor::Basic;

use Test::Class::Moose;

sub test_basic {
  pass "'test' is 'runnable'";
  pass 'Test has 2nd test';
  pass 'another test';
}

1;
