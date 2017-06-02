#!/bin/bash
params=("$@")
pushd "/opt/retropie/emulators/rpix86"
if [[ "${params[0]}" == *.sh ]]; then
    bash "${params[@]}"
else
    ./rpix86 -a0 -f2 "${params[@]}"
fi
popd
