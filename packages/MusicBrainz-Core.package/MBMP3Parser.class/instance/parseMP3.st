parsing
parseMP3
	| flags |
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	flags := self stream next.
	self setID3Size.
	self parseFrames