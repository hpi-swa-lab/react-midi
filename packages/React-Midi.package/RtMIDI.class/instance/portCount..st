ffi
portCount: device

	<apicall: ulong rtmidi_get_port_count(void*)>
	^ self externalCallFailed