remembering
remember: anObject at: key
	anObject class = StompClassNotFound ifTrue: [
		self context at: key put: nil.
		^ key
	].

	(self supportsReferenceFor: anObject) ifFalse: [^nil]. 
	self context at: key put: anObject.
	^ key