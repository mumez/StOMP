dispatching
readObjectOf: type ifNotApplied: aBlock
	(type between: 16r90 and: 16r9F) ifTrue: [^ self readFixArray: type].
	^super readObjectOf: type ifNotApplied: aBlock