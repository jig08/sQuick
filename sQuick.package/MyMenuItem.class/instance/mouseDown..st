as yet unclassified
mouseDown: ev
	"(MainInterface instance viewer) contents: (chapter content)  wrappedTo: 650."
	(ContentBox instance contentView ) contents: (chapter content )wrappedTo: 650.
	ContentBox startUp .