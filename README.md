# React/S MIDI

This repo contains two projects:
1. React MIDI, a looping MIDI generator that implements the concepts of ReactJS.
2. An asymmetric live coding frontend where a performer in VR can schedule React MIDI methods written by a performer on a laptop to specific instruments.

## Pre-packaged Installation
We have tested this on Linux and Windows only.

1. Download https://tmbe.me/c/midi-bundle.zip and run squeak.bat/squeak.sh.
2. There will be an open workspace. Select its step 1 and press Cmd/Ctrl+d for do-it.
3. Then paste this into the workspace and do-it: `RtMIDI class compile: 'moduleName ^ ''rtmidi'''`. This sets the path to the rtmidi library, so if it can't be found, you can adapt it here.
3. The remainder of the workspace explains the use of the system.
4. (Windows-only) we needed LoopMIDI to be able to send the generated MIDI events to a locally running synth. https://www.tobias-erichsen.de/software/loopmidi.html

## Installation from Scratch

* You need a Squeak6.0.
* Clone and load this project via Metacello:
```smalltalk
Metacello new
	baseline: 'ReactMIDI';
	repository: 'github://hpi-swa-lab/react-midi:main/packages';
	load
```
* Make sure you have the dynamic library for rtmidi in your shared lib path.
* For the VR subsystem, make sure to have Godot installed.
* For the Quest in particular, make sure to have adb in your PATH.
