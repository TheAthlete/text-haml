#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 1;

use Text::Haml;

my $haml = Text::Haml->new;

my $output = $haml->render(<<'EOF', foo => 'bar', baz => {key => 1});
= $foo
= $baz->{key}
EOF
is($output, <<'EOF');
bar
1
EOF
