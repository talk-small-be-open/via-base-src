nonediting/nontyping keys
escape: aString
	^ PRTextParser escape: aString all: (Array with: self markup with: self markupAlias with: self markupAnchor with: self markupEmbedded with: self markupParameter with: self markupParameterValue)