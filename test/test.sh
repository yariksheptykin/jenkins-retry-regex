#!/usr/bin/env bash
set +x

[[ $(grep -E "$(cat regex)" test/retry-triggers.txt | wc -l) == $(cat test/retry-triggers.txt | wc -l) ]] && [[ $(grep -E "$(cat regex)" test/non-retry-triggers.txt | wc -l) == 0 ]]
exit $?
