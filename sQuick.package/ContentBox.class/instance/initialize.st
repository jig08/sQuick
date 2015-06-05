as yet unclassified
initialize

	| font resourceFolder |
	resourceFolder := FileSystem workingDirectory / 'sQuick' / 'resources'.
	font := LogicalFont familyName: 'WenQuanYi Micro Hei' pointSize: 12.
	
	StandardFonts listFont: font .
	StandardFonts menuFont: font.
	StandardFonts codeFont: font .
	StandardFonts buttonFont: font .
	StandardFonts defaultFont: font .
	StandardFonts windowTitleFont: font.
	
	headerImg := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'header.gif').
	headerImg position: 0@0.
	
	fileName := TextMorph new.
	fileName position: 120@120.
	fileName extent: 200@80.
	
	fileContent := PluggableTextMorph new.
	fileContent position: 120@200.
	fileContent extent: 500@500.
	viewBlock := fileContent textMorph .	
	
	"box := Morph new.
	box color: Color paleOrange ."
	box := ImageMorph withForm: (Form fromFileNamed: resourceFolder / 'bg.gif').
	box extent: (World extent ).
	box addMorph: fileName  .
	box addMorph: headerImg.
	box addMorph: fileContent.
	box openInWindow .
	