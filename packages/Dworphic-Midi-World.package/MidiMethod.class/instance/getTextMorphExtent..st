morph handling
getTextMorphExtent: morph

	| extent |
	extent := morph fullBounds extent.
	^ 0.015 @ (extent x * 0.0005) @ (extent y * 0.0005) 