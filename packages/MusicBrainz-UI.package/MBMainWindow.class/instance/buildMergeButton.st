building
buildMergeButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.2@0.95 corner: 0.4@1);
		label: self class labelForMergeButton;
		enabled: #isAlbumOrTrackSelected;
		action: [MBMetadataMergeWindow openFrom: self]
