ffi
outFree: device

	<apicall: ulong rtmidi_out_free(void*)>
	^ self externalCallFailed