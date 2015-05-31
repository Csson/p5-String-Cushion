# NAME

String::Cushion - Vertically pad a string

![Requires Perl 5.10.1+](https://img.shields.io/badge/perl-5.10.1+-brightgreen.svg) [![Travis status](https://api.travis-ci.org/Csson/p5-String-Cushion.svg?branch=master)](https://travis-ci.org/Csson/p5-String-Cushion)

# VERSION

Version 0.0001, released 2015-05-31.

# SYNOPSIS

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

# DESCRIPTION

String::Cushion provides `cushion`, a simple function that removes all leading and trailing lines and lines only consisting of white space or line breaks, and then adds a specified number of leading and trailing new lines (`\n`).

## METHODS

### cushion $number\_of\_new\_lines, $string

    # "\n        hello\n"
    my $string = cushion 1, q{
        hello
    };

### cushion $number\_of\_leading\_new\_lines, $number\_of\_trailing\_new\_lines, $string

    # "\n        hello\n\n"
    my $string = cushion 1, 2, q{
        hello
    };

# SEE ALSO

- [String::Stomp](https://metacpan.org/pod/String::Stomp)
- [String::Nudge](https://metacpan.org/pod/String::Nudge)

# SOURCE

[https://github.com/Csson/p5-String-Cushion](https://github.com/Csson/p5-String-Cushion)

# HOMEPAGE

[https://metacpan.org/release/String-Cushion](https://metacpan.org/release/String-Cushion)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
