loop
* ordered sequence of notes with durations
* loops always begin at downbeats
* the total sum of durations may exceed one measure
* if the total duration does not add up to a full measure, no notes will be played until the next downbeat

player
* is called every 10 milliseconds
* sends measure progress signal to all loops (0.0 is the start of the song, 1.0 is the start of the 2nd measure, 2.0 start of the third, ...)
* when the progress changes integer value, the player emits a downbeat signal

loop progress
* in every step, the loop receives the measure progress from the player
* the loop keeps track of the last progress time it received
* for all notes that trigger within [last_progress \\ measure_length; progress \\ measure_length], play the notes

note
* when a note plays, it sends a noteOn to the MIDI system
* when a note plays, it schedules a squeak timeout to send a noteOff (indepdent of our scheduling system --> always triggers, even if the system gets turned off mid-note) (RISK: squeak's scheduling may not be sufficiently accurate)

