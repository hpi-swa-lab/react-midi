ffi
outCreate: api name: aString

	<apicall: void* rtmidi_out_create(long, char*)>
	^ self externalCallFailed