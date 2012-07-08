private
mappedClassNameAt: classNameSymbol in: environmentQualifier 
	| key |
	key := environmentQualifier isNil
				ifTrue: [classNameSymbol]
				ifFalse: [Array with: environmentQualifier with: classNameSymbol].
	^ self classAliasesDictionary
		at: key
		ifAbsent: [classNameSymbol]