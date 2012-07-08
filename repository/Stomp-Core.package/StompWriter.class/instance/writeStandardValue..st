writing
writeStandardValue: writeObject 
	| sz writeObjectClass classId attributes |
	sz := 2 + writeObject stompValueContentSize. 
	self writeArraySize: sz.
	self writeTag: StompConstants value.
	writeObjectClass := writeObject class.
	self portableUtil popularClassMap codeAt: writeObjectClass ifPresent: [:code | 
		self writeInteger: code negated.
		^ self writeContent: writeObject.
	].
	classId := self context classIdOf: writeObjectClass ifAbsent: [].
	classId == nil ifFalse: [
		self writeInteger: classId. 
		^ self writeContent: writeObject
	].
	attributes := OrderedCollection new.
	self addClassSpecifierAttributesTo: attributes for: writeObject.
	self writeMapSize: attributes size.
	attributes do: [:assoc |
		self writePositiveFixNum: assoc key.
		super writeObject: assoc value
	].
	self writeContent: writeObject