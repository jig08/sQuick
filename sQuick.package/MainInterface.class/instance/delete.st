as yet unclassified
delete
	MyMenuItem clear.
	Chapter clear.
	txtViewer isNil ifFalse: [ txtViewer delete].
	txtViewer2 isNil ifFalse: [ txtViewer2 delete].
	ptm isNil ifFalse: [ ptm delete].
	ptm2 isNil ifFalse: [ ptm2 delete].
	mnuTitles isNil ifFalse: [ mnuTitles delete].
	browse isNil ifFalse: [ browse delete].
	box isNil ifFalse: [ box delete].
	box := nil.
	txtViewer := nil.
	txtViewer2 := nil.
	browse := nil.
	mnuTitles := nil.
	ptm := nil.
	ptm2 := nil.
	Smalltalk garbageCollect.