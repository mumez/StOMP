renaming
registerClassOldName: oldClassNameSymbol in: oldEnvironmentQualifier shapeChanger: shapeChangerClass for: existingClass
	self registerClassOldName: oldClassNameSymbol in: oldEnvironmentQualifier for: existingClass.
	self registerShapeChanger: shapeChangerClass for: existingClass.