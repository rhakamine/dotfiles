#!/usr/bin/env fish

set -l wordlist $(find $MARKPATH -type l -printf "%f\n")
complete -f -c unmark -n "not __fish_seen_subcommand_from $wordlist" -a "$wordlist"
