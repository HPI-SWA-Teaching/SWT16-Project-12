TESTING: building
testBuildWith
	| windowSpec |
	windowSpec  := self metadataWindow buildWith: MorphicToolBuilder new.
	self 
		assert: windowSpec class 
		equals: PluggableSystemWindow