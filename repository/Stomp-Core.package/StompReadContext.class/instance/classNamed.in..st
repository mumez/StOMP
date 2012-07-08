actions
classNamed: localClassName in: environmentQualifier 
	| qualifier isClassClass localClassNameSize className foundClass |
	qualifier := self settings useEnvironment ifTrue: [environmentQualifier].
	
	isClassClass := false.
	localClassNameSize := localClassName size.
	className := ((localClassName at: (localClassNameSize)) = $$)
				ifTrue: [isClassClass := true.
					localClassName copyFrom: 1 to: (localClassNameSize-1)]
				ifFalse: [localClassName].
				
	foundClass := self mappedClassAt: className asSymbol in: qualifier.	
	isClassClass ifTrue: [foundClass := foundClass class].
	
	^ foundClass