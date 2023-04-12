rendering
renderCollisionShape: morph

	^ GDCollisionShape new
		shape: (self getTextMorphShape: morph);
		rotation: Float pi @ 0 @ Float pi / 2