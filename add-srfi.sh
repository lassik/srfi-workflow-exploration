#!/bin/sh
set -eux
for n in "$@"; do
	s="srfi-$n"
	if ! test -e "$s"; then
		git remote add "$s" "git@github.com:scheme-requests-for-implementation/$s.git"
		git subtree add --prefix="$s" "$s" master
	fi
done
