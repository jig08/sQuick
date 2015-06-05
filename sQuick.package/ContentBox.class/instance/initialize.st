as yet unclassified
initialize

	| font resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick' / 'resources'.
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 20.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
	
	headerImg := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'header.gif').
	headerImg position: 0@0.
	
	fileName := TextMorph new.
	fileName position: 140@120.
	fileName extent: 200@80.
	
	fileContent := PluggableTextMorph new.
	fileContent position: 140@200.
	fileContent extent: 1000@500.
	viewBlock := fileContent textMorph .	
	
	"box := Morph new.
	box color: Color paleOrange ."
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'contentBG.gif').
	box extent: (World extent ).
	box addMorph: fileName  .
	box addMorph: headerImg.
	box addMorph: fileContent.
	box openInWindow .
	