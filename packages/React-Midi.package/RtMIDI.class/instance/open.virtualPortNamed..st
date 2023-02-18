ffi
open: device virtualPortNamed: aString

	<apicall: void* rtmidi_open_virtual_port(void*, char*)>
	^ self externalCallFailed