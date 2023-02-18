ffi
get: api port: aNumber nameInto: aString lengthPtr: aCollection

	<apicall: long rtmidi_get_port_name(void*, ulong, char*, int*)>
	^ self externalCallFailed