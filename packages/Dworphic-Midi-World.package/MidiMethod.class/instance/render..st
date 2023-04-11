rendering
render: props

	^ props extract: [:onAssignChannel :transform :onTransform :instrument :onMove | | channelAreas grabbed text morph |
		channelAreas := self useProvided: #channelAreas.
		grabbed := self useState: false.
		
		text := self
			useMemo: [(MIDIReact current midiClass >> instrument) getSource]
			dependencies: {instrument}.
		morph := self useStyledTextMorph: text.
		
		GRDraggableArea new
			point: false;
			touch: true;
			children: {
				self renderCollisionShape: morph.
				GDSpatial new
					subscribeTo: #'global_transform' do: onMove;
					children: {
						FormDworph new
							morph: morph;
							translation: 0 @ 0.017 @ 0.
						GDMeshInstance new
							mesh: (GDCubeMesh new
								size: (self getTextMorphExtent: morph) * 2;
								material: (GDSpatialMaterial new albedoColor: (grabbed get ifTrue: [Color r: 1 g: 1 b: 0.8] ifFalse: [Color r: 0.625 g: 0.625 b: 0.625])));
							rotation: 0 @ 0 @ Float pi / 2;
							scale: 1 @ 1 @ 1.
						GDArea new
							onAreaEntered: [:area |
								channelAreas associations
									detect: [:assoc | assoc key get = area]
									ifFound: [:assoc | onAssignChannel value: assoc value]];
							onAreaExited: [:area | onAssignChannel value: nil];
							children: {GDCollisionShape new shape: (GDBoxShape new extents: 5 cm asVector3)}};
					rotationDegrees: 90 @ 0 @ 0};
			transform: transform;
			handle: instrument;
			onGrab: [:e | grabbed set: true];
			onRelease: [:e |
				grabbed set: false.
				onTransform value: e transform]]