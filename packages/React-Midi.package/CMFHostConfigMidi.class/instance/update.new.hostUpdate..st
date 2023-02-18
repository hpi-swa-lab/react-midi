reconciliation
update: aHostNode new: aNewNode hostUpdate: aHostUpdate

	aHostUpdate keysAndValuesDo: [:key :value | aHostNode perform: key asSimpleSetter with: value]