as yet unclassified
mouseDown: ev
	"(MainInterface instance viewer) contents: (chapter content)  wrappedTo: 650."
	"MainInterface contentBox."
	mainInterface contentBox contentViewHeader contents:(chapter title ).
	mainInterface contentBox contentView contents: ( chapter content ) wrappedTo: 650.
	