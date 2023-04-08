as yet unclassified
render: props

	props extract: [:translation :channel | | channelAreas ref radius |
		ref := self useGodotRef.
		channelAreas := self useProvided: #channelAreas.
		self
			useEffect: [channelAreas at: ref put: (channel = 5 ifTrue: [9] ifFalse: [channel])]
			dependencies: #().
		
		radius := 0.5 m.
		
		^ GDMeshInstance new
			translation: translation + (0 @ (self class height / 2) @ 0);
			mesh: (GDCylinderMesh new
				height: self class height;
				topRadius: radius;
				bottomRadius: radius;
				material: (GDSpatialMaterial new
					flagsTransparent: true;
					paramsCullMode: GDSpatialMaterial cullDisabled;
					albedoColor: ((self class colors at: channel) alpha: 0.5)));
			children: {
				GDArea new
					ref: ref;
					spaceOverride: GDArea spaceOverrideReplace;
					gravityPoint: true;
					gravityVec: 0 asVector3;
					linearDamp: 0.9;
					angularDamp: 0.9;
					children: {
						GDCollisionShape new shape: (GDCylinderShape new
							height: self class height;
							radius: radius)}}]