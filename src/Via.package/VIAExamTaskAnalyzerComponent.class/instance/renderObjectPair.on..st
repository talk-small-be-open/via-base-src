rendering-visitor
renderObjectPair: anObjectPair on: html
	html tableRow: [
		html tableData: [
			self renderAnalyticsBoxOf: anObjectPair on: html with: [
				anObjectPair leftPillar acceptRenderingVisitor: self on: html]].
		html tableData: [
			anObjectPair rightPillar acceptRenderingVisitor: self on: html]]