as yet unclassified
openWithFileName: fn
	title := fn.
	(FileLocator workingDirectory / 'Documents' / fn) readStreamDo: [ :in| content := in upToEnd].