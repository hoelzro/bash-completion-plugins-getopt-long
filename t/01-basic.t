use strict;
use warnings;
use lib 't/lib';

use Bash::Completion::Plugin::Test;
use Test::More tests => 19;

my $tester = Bash::Completion::Plugin::Test->new(
    plugin => 'Bash::Completion::Plugins::Test',
);

$tester->check_completions('test-cmd ^', ['--boolean', '--integer=', '--string=', '--opt-string', 'foo']);
$tester->check_completions('test-cmd --^', ['--boolean', '--integer=', '--string=', '--opt-string']);

$tester->check_completions('test-cmd --boolean ^', ['foo']);

$tester->check_completions('test-cmd --integer=^', []);
$tester->check_completions('test-cmd --integer ^', []);
$tester->check_completions('test-cmd --integer=3 ^', ['foo']);
$tester->check_completions('test-cmd --integer 3 ^', ['foo']);

$tester->check_completions('test-cmd --string=^', []);
$tester->check_completions('test-cmd --string ^', []);
$tester->check_completions('test-cmd --string=foo ^', ['foo']);
$tester->check_completions('test-cmd --string foo ^', ['foo']);

$tester->check_completions('test-cmd --opt-string=^', []);
$tester->check_completions('test-cmd --opt-string ^', ['foo']);
$tester->check_completions('test-cmd --opt-string=foo ^', ['foo']);
$tester->check_completions('test-cmd --opt-string foo ^', ['foo']);

$tester->check_completions('test-cmd --multi-string=^', []);
$tester->check_completions('test-cmd --multi-string ^', []);
$tester->check_completions('test-cmd --multi-string bar ^', []);
$tester->check_completions('test-cmd --multi-string bar baz ^', ['foo']);
