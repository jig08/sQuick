as yet unclassified
initialize

	| font resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick' / 'resources'.
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 4.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
	
	"REmoving ICON"
	"title := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'rsz_bin.gif').
	title position: 0@0."
	
	header := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'header.gif').
	header position: 0@0.
	
	"langList := TextMorph new.
	langList newContents: 'Language'.
	langList borderWidth: 1.
	langList backgroundColor: Color white.
	langList position: 300@130.
	langList height: 50.
	langList width: 180. "
	
	langSelect:= DropListMorph new.
	langSelect font: font .
	langSelect selectionColor: Color yellow .
	langSelect list: #( #English #Greek #Chinese #French #Spanish #German #Japanese #Hindi).
	langSelect listSelectionIndex: 1.
	langSelect position:300@130.
	langSelect extent: 180@30.
	
	searchFor := TextMorphForEditView new.
	searchFor position: 500@130.
	searchFor height: 50.
	searchFor width: 450.
	searchFor newContents: 'Type the search string ...'.
	searchFor borderWidth: 1.
	searchFor backgroundColor: Color white.
	
	srchBtn := SimpleButtonMorph newWithLabel: 'Search'.
	srchBtn color: Color paleTan .
	srchBtn borderColor: Color brown .
	srchBtn borderWidth: 3.
	srchBtn helpText: 'Click to search'.
	srchBtn roundedCorners: 4 .
	srchBtn position: 1000@120.
	srchBtn extent: 100@50.
		
	" Removing RECENT FILES option"
	"-----------------------------------------"
	"mnuTitles := MenuMorph new.
	mnuTitles stayUp: true.
	mnuTitles position: 50@200.
	mnuTitles extent: 400@1000.	
	
	headerMenu := TextMorph new.
	headerMenu newContents: 'Recent Files'.
	headerMenu backgroundColor: Color paleBlue .
	headerMenu extent: 175@50.
	mnuTitles addMorph: headerMenu ."	
		
   "------------------------------------------"
	
	searchHdr := TextMorph new.
	searchHdr newContents: 'Search Results : '.
	searchHdr position: 300@200.
	searchHdr extent: 175@50.
	searchHdr font: font .
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowVScrollBar: true.
	ptm position: 300@250.
	ptm extent: 800@300.	
	txtViewer := ptm textMorph.
	
	browse := MenuMorph new.
	browse stayUp: true.
	browse position: 50@250.
	browse extent: 400@1000.	
	
	browseHdr := TextMorph new.
	browseHdr newContents: 'Browse'.
	browseHdr backgroundColor: Color paleBlue .
	browseHdr extent: 175@50.
	browse addMorph: browseHdr  .	
	
	" ===  No need of the content view here === "
	"------------------------------------------------------------------------"		
	"contentHdr := TextMorph new.
	contentHdr newContents: 'Contents of the selected file:'.
	contentHdr position: 300@470.
	contentHdr extent: 250@50.
	contentHdr font: font .	
		
	ptm2 := PluggableTextMorph new.
	ptm2 alwaysShowVScrollBar: true.
	ptm2 position: 300@520.
	ptm2 extent: 650@120.	
	txtViewer2 := ptm2 textMorph.
	
	updateBtn := SimpleButtonMorph newWithLabel: 'Update'.
	updateBtn color: Color paleTan .
	updateBtn borderColor: Color brown .
	updateBtn borderWidth: 3.
	updateBtn helpText: 'Click to update the text'.
	updateBtn roundedCorners: 4 .
	updateBtn position: 1000@520.
	updateBtn extent: 100@50."	
	"---------------------------------------------------------"
	
	"== FILE ACCESS =="
	
	Chapter clear.
	MyMenuItem clear.
		
	(resourceFolder / 'document') allFiles sort do: [ :f |
		Document new
			openWithFile: f;
			title: f basenameWithoutExtension ].
	
	Chapter allSubInstances size > 0 ifTrue: [
		1 to: (Chapter allSubInstances size) do: [ :index |
			|chapter item|
			chapter := Chapter at: index.
			item := MyMenuItem new chapter: chapter. 
			item mainInterface: self.
			"item := MyMenuItem new chapter: chapter."
			browse  addMenuItem: item.
		].
	].

	"---------------------------------------------------------"
	
	helpBtn := SimpleButtonMorph newWithLabel: 'Help | Tutorial'.
	helpBtn color: Color paleTan .
	helpBtn borderColor: Color brown .
	helpBtn borderWidth: 3.
	helpBtn helpText: 'How to use sQuick'.
	helpBtn roundedCorners: 4 .
	helpBtn position: 300@600.
	helpBtn extent: 100@50.
	
	aboutBtn := SimpleButtonMorph newWithLabel: 'About sQuick'.
	aboutBtn color: Color paleTan .
	aboutBtn borderColor: Color brown .
	aboutBtn borderWidth: 3.
	aboutBtn helpText: 'About sQuick'.
	aboutBtn roundedCorners: 4 .
	aboutBtn position: 500@600.
	aboutBtn extent: 100@50.
	
	feedBtn := SimpleButtonMorph newWithLabel: 'Feedback' .
	feedBtn color: Color paleTan .
	feedBtn borderColor: Color brown .
	feedBtn borderWidth: 3.
	feedBtn helpText: 'Feedback'.
	feedBtn roundedCorners: 4 .
	feedBtn position: 700@600.
	feedBtn extent: 100@50.
	
	
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'bg.gif').
	box extent: (World extent ).
	"box addMorph: title ."
	box addMorph: header.
	"box addMorph: langList ."
	box addMorph: langSelect .
	box addMorph: searchFor .
	box addMorph: srchBtn.
	box addMorph: searchHdr .
	box addMorph: ptm.
	"box addMorph: mnuTitles."
	box addMorph: browse .
	"box addMorph: contentHdr .
	box addMorph: ptm2 .
	box addMorph: updateBtn ."
	box addMorph: helpBtn .
	box addMorph: aboutBtn.
	box addMorph: feedBtn .
	box openInWindow .
	