accessing
toggleAutoload
	self autoloadCheckboxState: self autoloadCheckboxState not.
	self settings at: 'Autoload' put: self autoloadCheckboxState