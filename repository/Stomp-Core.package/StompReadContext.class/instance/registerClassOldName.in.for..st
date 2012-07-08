renaming
registerClassOldName: oldClassNameSymbol in: oldEnvironmentQualifier for: existingClass
	| key |
	key := oldEnvironmentQualifier isNil
				ifTrue: [oldClassNameSymbol]
				ifFalse: [Array with: oldEnvironmentQualifier with: oldClassNameSymbol].
	^ self classAliasesDictionary at: key put: existingClass