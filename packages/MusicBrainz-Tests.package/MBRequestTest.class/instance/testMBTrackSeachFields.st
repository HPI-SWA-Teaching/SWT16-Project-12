TESTING: dictionary
testMBTrackSeachFields

	self
		assert: MBRequest mbTrackSearchFields class
		equals: 	Dictionary 
		description: 'MBTrackSearchFields should return a dictionary'
	