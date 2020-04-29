as yet unclassified
onMoveFollowPointer
	self onStart: '
var me = event.target;
if ( ! $(me).data("dragDX") ) {
	$(me).data("dragDX", 0);
	$(me).data("dragDY", 0);
}
'.

	self onMove: '
var me = event.target;
var dx = $(me).data("dragDX");
var dy = $(me).data("dragDY");

dx += event.dx;
dy += event.dy;

me.style.transform = `translate(${dx}px, ${dy}px)`;

$(me).data("dragDX", dx);
$(me).data("dragDY", dy);
'.

	self onEnd: '
var me = event.target;
$(me).data("dragDX", 0);
$(me).data("dragDY", 0);
me.style.transform = "";
'.
