as yet unclassified
initializePresenter
	searchFor whenTextChanged: [ 
                srchBtn  enable ].
        srchBtn  action: [ 
                txtViewer  text: 'Searching for', searchFor text, '...'.
                srchBtn  disable ].