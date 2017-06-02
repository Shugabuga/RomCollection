#!/bin/bash
game="$1"
pushd "/home/pi/RetroPie/roms/scummvm" >/dev/null
/opt/retropie/emulators/scummvm/bin/scummvm --fullscreen --joystick=0 --extrapath="/opt/retropie/emulators/scummvm/extra" $game
while read line; do
    id=($line);
    touch "/home/pi/RetroPie/roms/scummvm/$id.svm"
done < <(/opt/retropie/emulators/scummvm/bin/scummvm --list-targets | tail -n +3)
popd >/dev/null
