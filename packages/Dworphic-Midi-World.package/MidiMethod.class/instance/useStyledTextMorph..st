resources
useStyledTextMorph: text

	^ self
		useMemo: [
			(SHTextStylerST80 new
				classOrMetaClass: UndefinedObject;
				styledTextFor: text asText) asMorph
				backgroundColor: Color white;
				yourself]
		dependencies: {text}