#!/usr/local/bin/perl
eval 'exec /opt/local/bin/perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
                        # this emulates #! processing on NIH machines.
                        # (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
                        # process any FOO=bar switches

$, = ' ';               # set output field separator
$\ = "\n";              # set output record separator

while (<>) {
    chomp;      # strip record separator
    @Fld = split(' ', $_, -1);
    print (($#Fld+1), $_);
}