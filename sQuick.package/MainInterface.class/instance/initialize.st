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
	
	title := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'rsz_1logo.gif').
	title position: 0@0.
	header := ImageMorph withForm: (Form fromFileNamed: FileSystem workingDirectory /'header.gif').
	header position: 150@0.
	
	langList := TextMorph new.
	langList newContents: 'Language'.
	langList borderWidth: 1.
	langList backgroundColor: Color white.
	langList position: 300@130.
	langList  height: 50.
	langList width: 180. 
	
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
	
	ptm := PluggableTextMorph new.
	ptm alwaysShowHScrollBar: true.
	ptm position: 300@200.
	ptm extent: 650@300.	
	txtViewer := ptm textMorph.	
		
	updateArea := PluggableTextMorph new.
	updateArea alwaysShowVScrollBar: true.
	updateArea position: 300@1000.
	updateArea extent: 650@200.
	viewDoc := updateArea textMorph.
	
	
	box := Morph new.
	box color: Color paleOrange  .
	box extent: (World extent).
	box addMorph: title .
	box addMorph: header.
	box addMorph: langList .
	box addMorph: searchFor .
	box addMorph: srchBtn.
	box addMorph: ptm.
	box addMorph: mnuTitles.
	box addMorph: updateArea .
	box openInWindow .