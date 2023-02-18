ffi
closePort: device

	<apicall: void* rtmidi_close_port(void*)>
	^ self externalCallFailed