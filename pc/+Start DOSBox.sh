#!/bin/bash
params=("$@")
if [[ -z "${params[0]}" ]]; then
    params=(-c "@MOUNT C /home/pi/RetroPie/roms/pc" -c "@C:")
elif [[ "${params[0]}" == *.sh ]]; then
    bash "${params[@]}"
    exit
else
    params+=(-exit)
fi
"/opt/retropie/emulators/dosbox/bin/dosbox" "${params[@]}"
