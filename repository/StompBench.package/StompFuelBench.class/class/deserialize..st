hooks
deserialize: bytes
	| des |
	des := (FLMaterializer on: bytes readStream) .
	des materialize.
	^ des root.