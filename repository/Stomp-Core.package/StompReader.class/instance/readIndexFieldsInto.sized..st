reading-helper
readIndexFieldsInto: anInstance sized: size
	1 to: size do:  [:idx | 
		anInstance stompAt: idx put: self readObject
	].
	^ anInstance