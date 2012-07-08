writing-attributes
addClassNameAttributeTo: attributes for: writeObject

	^attributes add: (StompConstants klassName -> (self bytesFromIdentifierString: (self classNameOf: writeObject)))