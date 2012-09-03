package Bash::Completion::Plugins::Test;

use strict;
use warnings;
use parent 'Bash::Completion::Plugins::Getopt::Long';

sub should_activate {
    return [ 'test-cmd' ];
}

sub option_spec {
    return [
        '--boolean',
        '--integer=i',
        '--string=s',
        '--opt-string:s',
    ];
}
