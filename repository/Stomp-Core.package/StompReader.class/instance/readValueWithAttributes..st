reading-attributes
readValueWithAttributes: attribDict
	| clsName envName |	
	clsName := self identifierStringFromBytes: (attribDict at: StompConstants klassName ifAbsent: []).
	envName := self identifierStringFromBytes: (attribDict at: StompConstants environmentName ifAbsent: []).
	envName
		ifNil: 
			[envName := self context
						environmentNameAt: (attribDict at: StompConstants environmentId ifAbsent: [])]
		ifNotNil: [self context rememberEnvironmentName: envName].
	^ self readInstanceContentClassNamed: clsName in: envName