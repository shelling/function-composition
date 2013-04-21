package Function::Composition;
use strict;
use warnings;
our $VERSION = '0.01';

sub compose {
    my @functions = reverse @_;
    return sub {
        my @res = @_;
        for my $f (@functions) {
            @res = $f->(@res);
        }
        @res;
    }
}

1;
__END__

=head1 NAME

Function::Composition - compose functions into one function

=head1 SYNOPSIS

  use Function::Composition;

  my $new_function = compose(\&function1, \&function2, \&function3 ...);

=head1 DESCRIPTION

Simulate the concept of Function Composition in Haskell.

=head1 AUTHOR

shelling E<lt>navyblueshellingford@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

MIT (X11) License

=cut
