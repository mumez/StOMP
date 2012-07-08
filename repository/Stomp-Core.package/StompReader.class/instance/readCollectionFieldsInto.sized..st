reading-helper
readCollectionFieldsInto: anInstance sized: size
	
	anInstance class isVariable ifTrue: [^ self readIndexFieldsInto: anInstance sized: size].

	1 to: size do:  [:idx | 
		anInstance stompAdd: self readObject at: idx
	].
	^ anInstance