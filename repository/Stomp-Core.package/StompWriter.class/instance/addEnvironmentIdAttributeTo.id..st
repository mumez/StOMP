writing-attributes
addEnvironmentIdAttributeTo: attributes id: envId

	^attributes add: (StompConstants environmentId -> envId)