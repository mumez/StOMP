dispatching
writeObject: anObject
	"Main dispatching method"
	| writeObject |
	anObject stompPrepareWrite.
	(self supportsReferenceFor: anObject) ifTrue: [	
		self putReferenceOf: anObject ifExists: [:refId | ^self writeReference: refId].
	].
	writeObject := anObject stompWriteValue.	
	self writeValue: writeObject.
	anObject stompAfterWrite

	