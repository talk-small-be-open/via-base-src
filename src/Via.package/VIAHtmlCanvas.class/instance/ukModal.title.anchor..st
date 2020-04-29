uikit
ukModal: aRenderableContent title: aTitleString anchor: aRenderableForAnchor
	| id |
	id := self nextId.

	"on-click opener"
	aRenderableForAnchor ifNotNil: [
		self anchor
			ukToggleTarget: ('#', id);
"			attributeAt: 'data-uk-modal' put: true;"
			with: aRenderableForAnchor].

	self div
		a: 'uk-modal';
		id: id;
		with: [
			self div class: 'uk-modal-dialog'; with: [
				self button
					a: 'uk-close';
					class: 'uk-modal-close-default'.
				aTitleString ifNotNil: [
					self div class: 'uk-modal-header'; with: [
						self heading level2; class: 'uk-modal-title'; t: aTitleString]].
				self div class: 'uk-modal-body'; with: aRenderableContent]].

	"Open immediately if no click-opener given"
	aRenderableForAnchor ifNil: [
		self script: 'UIkit.modal("#', id,'", {escClose: false, bgClose: false}).show()']