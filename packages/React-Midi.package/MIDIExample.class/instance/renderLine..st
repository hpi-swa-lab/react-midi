midi components
renderLine: props

	| figure |
	true ifTrue: [^ nil].
	figure := [:a :b :c | {self note: a for: 1 / 4. self note: b for: 1 / 4. self note: c for: 1 / 4. self restFor: 1 / 4}].
	
	^ self
		loop: (figure value: self c3 value: self e3 value: self g3), (figure value: self b3 value: self e3 value: self g3), (figure value: self b3 value: self e3 value: self g3), (figure value: self a2 value: self c3 value: self a3)
		channel: (props at: #channel)