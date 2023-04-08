as yet unclassified
render: props

	^ props extract: [:onAssignChannel :onTransform :instrument :globalTransform | | grabbed channelAreas |
		channelAreas := self useProvided: #channelAreas.
		
		GDRigidBody new
			globalTransform: globalTransform;
			mode: GDRigidBody modeStatic;
			children: {
				GDCollisionShape new shape: (GDBoxShape new extents: 5 cm asVector3).
				MidiMethod new method: instrument.
				GRGrabbableArea new
					point: true;
					touch: true;
					transform: Matrix4x4 identity;
					onGrab: [grabbed set: true];
					onRelease: [:event |
						grabbed set: false.
						onTransform value: event transform];
					children: {self cubeOfSize: 10 cm color: (Color r: 0.0 g: 0.0 b: 1)}}]