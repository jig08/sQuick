as yet unclassified
mouseDown: ev
	"(MainInterface instance viewer) contents: (chapter content)  wrappedTo: 650."
	ContentBox startUp .
	(ContentBox instance contentViewHeader) contents: (chapter title ).
	(ContentBox instance contentView ) contents: (chapter content )wrappedTo: 650.
	