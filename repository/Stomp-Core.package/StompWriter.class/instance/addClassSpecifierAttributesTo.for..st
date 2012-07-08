writing-attributes
addClassSpecifierAttributesTo: attributes for: writeObject 
	| writeObjectClass |
	writeObjectClass := writeObject class.
	self addClassNameAttributeTo: attributes for: writeObject.
	self context rememberClass: writeObjectClass.
		
	(self context includesEnvironment: writeObjectClass environment)
		ifTrue: [| envId |
			envId := self context environmentIdOf: writeObjectClass environment.
			self addEnvironmentIdAttributeTo: attributes id: envId]
		ifFalse: [self addEnvironmentNameAttributeTo: attributes for: writeObject.
			self context rememberEnvironment: writeObjectClass environment].