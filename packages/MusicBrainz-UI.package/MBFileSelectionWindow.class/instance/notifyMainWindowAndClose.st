importing
notifyMainWindowAndClose 
	self mainWindow 
		importFiles: self files;
		importWindow: nil.
	self dependents do: [ :each | each delete]