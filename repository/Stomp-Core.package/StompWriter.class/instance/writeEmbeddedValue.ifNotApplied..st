writing
writeEmbeddedValue: writeObject ifNotApplied: aBlock
	writeObject isSymbol ifTrue: [^self writeSymbol: writeObject].
	writeObject isString ifTrue: [^self writeString: writeObject].
	^ aBlock value