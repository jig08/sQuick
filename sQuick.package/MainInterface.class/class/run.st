as yet unclassified
run
	(instance == nil) ifTrue: [
		instance := MainInterface  new.
		^ instance.
	]; ifFalse: [
		^ instance.
	]