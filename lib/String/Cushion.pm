use 5.10.1;
use strict;
use warnings;
package String::Cushion;

# VERSION
# ABSTRACT: Vertically pad a string

1;

use Sub::Exporter::Progressive -setup => {
    exports => [qw/cushion/],
    groups => {
        default => [qw/cushion/],
    },
};

sub cushion($$;$) {
    my $top_cushion = shift;
    my $second = shift;
    my $third = shift;

    my $bottom_cushion = defined $third ? $second : $top_cushion;
    my $string = defined $third ? $third : $second;

    if($top_cushion !~ m{^\d+$} || $bottom_cushion !~ m{^\d+$}) {
        return $string;
    }

    $string =~ s{\A[\h\v]*\v(?=\h*[^\h\v])}{};
    $string =~ s{([^\h\v]\V*)\v[\h\v]*\z}{$1};

    $string = ("\n" x $top_cushion) . $string . ("\n" x $bottom_cushion);

    return $string;
}

1;


=encoding utf-8

=head1 SYNOPSIS

    use String::Cushion;


    sub out {
        print cushion 2, 3, q{
            A short
            text
        };
    }

    # is exactly the same as
    sub out {
        print q{

            A short
            text.


        };
    }


=head1 DESCRIPTION

String::Cushion provides C<cushion>, a simple function that removes all leading and trailing lines and lines only consisting of white space or line breaks, and then adds a specified number of leading and trailing new lines (C<\n>).

=head2 METHODS

=head3 cushion $number_of_new_lines, $string

    # "\n        hello\n"
    my $string = cushion 1, q{
        hello
    };

=head3 cushion $number_of_leading_new_lines, $number_of_trailing_new_lines, $string

    # "\n        hello\n\n"
    my $string = cushion 1, 2, q{
        hello
    };


=head1 SEE ALSO

=for :list
* L<String::Stomp>
* L<String::Nudge>

=cut
