## no critic (RequireUseStrict)
package Bash::Completion::Plugins::Getopt::Long;

## use critic (RequireUseStrict)
use strict;
use warnings;

1;

__END__

# ABSTRACT: Bash::Completion support for scripts that use Getopt::Long

=head1 SYNOPSIS

 use parent 'Bash::Completion::Plugins::Getopt::Long';

 # XXX details pending

=head1 DESCRIPTION

This is an abstract plugin superclass for L<Bash::Completion> plugins that
wish to support scripts written with L<Getopt::Long> or can have their
options specified using L<Getopt::Long>-style syntax.

=head1 SEE ALSO

L<Bash::Completion>, L<Getopt::Long>

=cut
