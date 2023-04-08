rendering
renderCollisionShape: morph

	^ GDCollisionShape new
		shape: (self getTextMorphShape: morph);
		rotation: 4.2 @ 0 @ Float pi / 2