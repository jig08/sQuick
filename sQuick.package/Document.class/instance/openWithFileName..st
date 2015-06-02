as yet unclassified
openWithFileName: fn
	title := fn.
	(FileLocator workingDirectory / 'document' / fn) readStreamDo: [ :in| content := in upToEnd].