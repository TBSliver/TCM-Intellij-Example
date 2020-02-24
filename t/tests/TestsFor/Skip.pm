package TestsFor::Skip;

use Test::Class::Moose;

sub test_setup {
  my $test = shift;
  if ( 'test_skipped' eq $test->test_report->current_method->name ) {
    $test->test_skip('Skipping Test');
  }
}

sub test_skipped {
  my $test = shift;
  fail 'Test should not fail';
}

sub test_not_skipped {
  pass 'Test not skipped';
}

1;
