as yet unclassified
initialize

	| font |
	
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 12.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
	
	title := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'rsz_bin.gif').
	title position: 0@0.
	
	header := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'header.gif').
	header position: 150@0.
	
	"langList := TextMorph new.
	langList newContents: 'Language'.
	langList borderWidth: 1.
	langList backgroundColor: Color white.
	langList position: 300@130.
	langList height: 50.
	langList width: 180. "
	
	langSelect:= DropListMorph new.
	"langSelect enable: true."
	langSelect font: font .
	langSelect selectionColor: Color paleYellow .
	langSelect list: #( #English #Greek #Chinese).
	langSelect listSelectionIndex: 1.
	langSelect position:300@130.
	langSelect extent: 180@30.
	
	
	searchFor := TextMorphForEditView new.
	searchFor position: 500@130.
	searchFor height: 50.
	searchFor width: 450.
	searchFor newContents: 'Type the search string ...'.
	searchFor borderWidth: 1.
	searchFor backgroundColor: Color white .	
	
	srchBtn := SimpleButtonMorph newWithLabel: 'Search'.
	srchBtn color: Color paleGreen .
	srchBtn position: 1000@120.
	srchBtn extent: 100@50.
	
	mnuTitles := MenuMorph new.
	mnuTitles stayUp: true.
	mnuTitles position: 50@200.
	mnuTitles extent: 400@1000.	
	
	headerMenu := TextMorph new.
	headerMenu newContents: 'Recent Files'.
	headerMenu extent: 175@50.
	mnuTitles addMorph: headerMenu .	
	
	searchHdr := TextMorph new.
	searchHdr newContents: 'Search Results : '.
	searchHdr position: 300@200.
	searchHdr extent: 175@50.
	searchHdr font: font .
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowVScrollBar: true.
	ptm position: 300@250.
	ptm extent: 650@250.	
	txtViewer := ptm textMorph.
	
	browse := MenuMorph new.
	browse stayUp: true.
	browse position: 50@520.
	browse extent: 400@1000.	
	
	browseHdr := TextMorph new.
	browseHdr newContents: 'Browse'.
	browseHdr extent: 175@50.
	browse addMorph: browseHdr  .		
		
	ptm2 := PluggableTextMorph new.
	ptm2 alwaysShowVScrollBar: true.
	ptm2 position: 300@580.
	ptm2 extent: 650@120.	
	txtViewer2 := ptm2 textMorph.
	
	updateBtn := SimpleButtonMorph newWithLabel: 'Update'.
	updateBtn color: Color paleGreen .
	updateBtn position: 1000@580.
	updateBtn extent: 100@50.
	
	
	"box := Morph new.
	box color: Color paleOrange ."
	box := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'bg.gif').
	box extent: (World extent ).
	box addMorph: title .
	box addMorph: header.
	"box addMorph: langList ."
	box addMorph: langSelect .
	box addMorph: searchFor .
	box addMorph: srchBtn.
	box addMorph: searchHdr .
	box addMorph: ptm.
	box addMorph: mnuTitles.
	box addMorph: browse .
	box addMorph: ptm2 .
	box addMorph: updateBtn .
	box openInWindow .
	