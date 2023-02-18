as yet unclassified
baseline: spec
	<baseline>

	spec for: #common do: [
		spec baseline: 'GReaSe' with: [spec repository: 'github://hpi-swa-lab/pivr:master/squeak'].
		
		spec
			package: 'React-Midi' with: [spec requires: #('GReaSe')];
			package: 'Dworphic-Midi-World' with: [spec requires: #('GReaSe')].
		
		spec group: 'default' with: #('React-Midi' 'Dworphic-Midi-World')]