as yet unclassified
mouseDown: ev
	"(MainInterface instance viewer) contents: (chapter content)  wrappedTo: 650."
	"MainInterface contentBox."
	MainInterface instance contentBox contentViewHeader contents:(chapter title ).
	MainInterface instance contentBox contentView contents: ( chapter content ) wrappedTo: 650.
	