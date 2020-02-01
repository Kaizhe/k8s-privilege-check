#!/bin/sh

set -eu

SRC=${1-""}
TARGET=${2-""}

echo "Source Directory: $SRC"
echo "Target Directory: $TARGET"

/kube-psp-advisor compare --sourceDir "$SRC" --targetDir "$TARGET"

report="$(/kube-psp-advisor compare --sourceDir "$SRC" --targetDir "$TARGET" --json)"

echo "::set-output name=escalation_report::${report}"
