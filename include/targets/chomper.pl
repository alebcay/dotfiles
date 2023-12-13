#!/usr/bin/env perl
eval 'exec perl -S $0 ${1+"$@"}'
    if $running_under_some_shell;
                        # this emulates #! processing on NIH machines.
                        # (remove #! line above if indigestible)

eval '$'.$1.'$2;' while $ARGV[0] =~ /^([A-Za-z_0-9]+=)(.*)/ && shift;
                        # process any FOO=bar switches

$FS = ' ';              # set field separator
$, = ' ';               # set output field separator
$\ = "\n";              # set output record separator

while (<>) {
    chomp;      # strip record separator
    ($Fld1,$Fld2) = split($FS, $_, -1);
    if (!(defined $a{$Fld1})) {
        $b{++$n} = $Fld1;
    }
    $a{$Fld1} = $a{$Fld1} . $Fld2;
}

for ($i = 1; $i <= $n; $i++) {
    print $b{$i} . $FS . $a{$b{$i}};
}