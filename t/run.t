use Test::Script 1.10 tests => 4;

script_compiles('bin/unding');

my $pw = "test\n";

script_runs(['bin/unding', 't/secret.txt'], { stdin => \$pw }, 'encrypt');
script_runs(['bin/unding'],                 { stdin => \$pw }, 'decrypt');
script_stdout_is("Hello World!\n",                     'compare');
