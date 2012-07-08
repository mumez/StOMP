dispatching
writeStompFrom: anObject 
	(self settings withHeader and: [self writeStream position = 0])
		ifTrue: [self writeVersion].
	self writeObject: anObject