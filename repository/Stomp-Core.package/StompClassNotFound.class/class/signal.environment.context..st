instance creation
signal: className environment: envName context: dictionary 
	| inst |
	inst := self new.
	inst environmentName: envName.
	^ inst signal: className context: dictionary 