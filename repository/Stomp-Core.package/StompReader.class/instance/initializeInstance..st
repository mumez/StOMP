private
initializeInstance: instance 
	| shapeChangerClass |
	instance stompInitialize.
	shapeChangerClass := self context shapeChangerFor: instance class.
	shapeChangerClass
		ifNotNil: [(shapeChangerClass on: instance) loadAdditions]