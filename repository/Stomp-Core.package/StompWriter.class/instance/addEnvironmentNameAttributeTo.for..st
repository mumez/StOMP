writing-attributes
addEnvironmentNameAttributeTo: attributes for: writeObject

	| env |
	self settings useEnvironment ifFalse: [^self].
	(self portableUtil shouldWriteEnvironmentNameOf: writeObject) ifFalse: [^self].
	env := self portableUtil environmentNameOf: writeObject.
	^attributes add: (StompConstants environmentName -> (self bytesFromIdentifierString: env))
