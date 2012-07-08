writing-attributes
classNameOf: anObject
	| kls |
	kls := anObject class.
	^ (self portableUtil isMeta: kls) ifTrue: [(self portableUtil soleInstanceOf: kls) name, '$'] ifFalse: [kls name]