accessing
attachment2
	| inst |
	inst := self new.
	inst id: 'bbb.png'.
	inst type: 'png'.
	inst data: (ByteArray new: 800*1000).
	inst size: inst data size.
	^inst