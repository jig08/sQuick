as yet unclassified
readFiles
	(FileLocator workingDirectory / 'document') allFiles sort
		do: [ :f | 
				Document new
				openWithFile: f;
				title: f  basenameWithoutExtension ]