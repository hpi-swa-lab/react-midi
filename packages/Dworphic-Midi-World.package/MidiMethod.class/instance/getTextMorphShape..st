morph handling
getTextMorphShape: morph

	^ (self godot: #BoxShape) extents: (self getTextMorphExtent: morph) 