as yet unclassified
renderContentOn: html

	super renderContentOn: html.
	
	"TODO: ? use html canvas ukModal: ..."
	
	html div
		a: 'uk-modal';
		id: 'lightboxModal';
		with: [
			html div
				class: 'uk-modal-dialog';
				class: 'uk-width-2-3' if: self isWide;
				with: [
					title ifNotNil: [
						html div class: 'uk-modal-header'; with: [
							html heading level4; t: title]].
					html div class: 'uk-modal-body'; with: delegate]].

	"TODO: Frontend/Backend agnostisch werden"
	self isFrontend ifTrue: [
		html script: 'UIkit.modal("#lightboxModal", {escClose: false, bgClose: false}).show()']