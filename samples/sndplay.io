#!/usr/bin/env io

/*
if (System ?args == nil,
  write("requires name of sound file as argument")
)
*/

s := Sound clone setPath(Path with(System launchPath, "sounds/max.wav")) load

AudioDevice open 
//AudioDevice asyncWrite(s buffer)

loop( 
	while(AudioDevice needsData not, yield)
	writeln("writing")
	AudioDevice asyncWrite(s buffer)
)
