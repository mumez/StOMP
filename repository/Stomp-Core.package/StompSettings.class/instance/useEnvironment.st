accessing
useEnvironment
	^self at: #useEnvironment ifAbsentPut: [StompPortableUtil default useEnvironmentByDefault]