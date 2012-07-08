accessing
attachment1
	| inst |
	inst := self new.
	inst id: 'aaa.gif'.
	inst type: 'gif'.
	inst data: (ByteArray new: 700*1000).
	inst size: inst data size.
	^inst