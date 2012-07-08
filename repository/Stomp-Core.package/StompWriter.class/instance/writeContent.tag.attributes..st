writing-helper
writeContent: object tag: tag attributes: attribs
	| sz |
	sz := 2 + object stompValueContentSize. 
	self writeArraySize: sz.
	self writeTag: tag.
	self writeMapSize: attribs size.
	attribs do: [:assoc |
		self writePositiveFixNum: assoc key.
		super writeObject: assoc value
	].
	self writeContent: object