accessing
requests
	requests isNil ifTrue: [requests := Array new].
	^ requests