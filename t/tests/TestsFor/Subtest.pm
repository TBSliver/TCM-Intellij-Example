package TestsFor::Subtest;

use Test::Class::Moose;

sub test_one {
  pass "'test' is 'runnable'";
  subtest 'its a subtest' => sub {
    pass 'test in subtest';
  };
  pass 'another test';
}

sub test_nested {
  pass "'test' is 'runnable'";
  subtest 'its a subtest' => sub {
    pass 'test in subtest';
    subtest 'Nested Subtest' => sub {
      pass 'Nested much?';
    };
  };
  pass 'another test';
}

1;
