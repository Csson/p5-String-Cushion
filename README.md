# NAME

String::Cushion - Vertically pad a string

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10.1+-blue.svg" alt="Requires Perl 5.10.1+" />
    <a href="https://travis-ci.org/Csson/p5-String-Cushion"><img src="https://api.travis-ci.org/Csson/p5-String-Cushion.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/release/CSSON/String-Cushion-0.0200"><img src="http://badgedepot.code301.com/badge/kwalitee/CSSON/String-Cushion/0.0200" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=String-Cushion%200.0200"><img src="http://badgedepot.code301.com/badge/cpantesters/String-Cushion/0.0200" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-89.2%-orange.svg" alt="coverage 89.2%" />
    </p>
</div>

# VERSION

Version 0.0200, released 2017-05-18.

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

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
