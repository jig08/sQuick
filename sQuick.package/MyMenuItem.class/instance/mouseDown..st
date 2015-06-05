as yet unclassified
mouseDown: ev
	"(MainInterface instance viewer) contents: (chapter content)  wrappedTo: 650."
	MainInterface contentBox.
	MainInterface contentBox contentView contents:(chapter title ).
	MainInterface contentBox contentView contents: (chapter content )wrappedTo: 650.
	