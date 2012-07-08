writing
writeValue: writeObject 
	^ self
		writeEmbeddedValue: writeObject
		ifNotApplied: [self
				writeObject: writeObject
				ifNotApplied: [self writeStandardValue: writeObject]]