as yet unclassified
delete
	"fileName clear."
	"fileContent clear."
	viewBlock  isNil ifFalse: [ viewBlock delete].
	box := nil.
	"Smalltalk garbageCollect ."
	"--- Not necesary ; GC runs periodically ---"