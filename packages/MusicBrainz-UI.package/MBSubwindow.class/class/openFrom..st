opening
openFrom: aMainWindow
	| window |
	window := self new.
	window mainWindow: aMainWindow.
	^ ToolBuilder default open: window