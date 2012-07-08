shape changing
registerShapeChangerRenameBy: loadInstVarsBlock initializeBy: loadAdditionsBlock for: existingClass
	| changer |
	changer := StompBlockShapeChanger loadInstVarsBlock: loadInstVarsBlock loadAdditionsBlock: loadAdditionsBlock.
	^self shapeChangersDictionary at: existingClass put: changer