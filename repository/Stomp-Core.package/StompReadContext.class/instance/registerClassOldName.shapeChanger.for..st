renaming
registerClassOldName: oldClassNameSymbol shapeChanger: shapeChangerClass for: existingClass
	self registerClassOldName: oldClassNameSymbol for: existingClass.
	self registerShapeChanger: shapeChangerClass for: existingClass.