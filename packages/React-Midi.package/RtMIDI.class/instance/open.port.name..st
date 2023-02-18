ffi
open: device port: aNumber name: aString

	<apicall: void* rtmidi_open_port(void*, long, char*)>
	^ self externalCallFailed