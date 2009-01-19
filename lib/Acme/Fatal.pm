package Acme::Fatal;

use strict;
use warnings;

our $VERSION = '0.01';

use Filter::Util::Call;

sub import {
    my($type, @arguments) = @_;

    filter_add( sub {
            my $ret = filter_read();
            s/;(\s*#?.*)$/ or die;$1/g;
            $ret;
    } );
}

1;

__END__

=head1 NAME

Acme::Fatal - Replace statements with equivalents which succeed or die

=head1 SYNOPSIS

  use Acme::Fatal;

=head1 DESCRIPTION

L<autodie> detects failure in I/O operations and operations that result in system
calls which may fail, and automatically raises an alarm.

L<Acme::Fatal> takes this a step further and detects false result status of 
individual statements.

=head1 SEE ALSO

L<autodie>.  L<Fatal>.  L<Acme::Code::Police>.

=head1 AUTHOR

Scott Walters, E<lt>scott@slowass.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by Scott Walters

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.9 or,
at your option, any later version of Perl 5 you may have available.

=cut
