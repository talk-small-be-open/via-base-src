rendering
renderObject: aModelObject on: html
	html anchor
		callback: [ self clickModel: aModelObject ];
		with: aModelObject displayName