ffi
outSend: device message: aString length: aNumber

	<apicall: ulong rtmidi_out_send_message(void*, byte*, long)>
	^ self externalCallFailed