<!DOCTYPE html>

<script
scr="http://maps.googleapis.com/maps/api/js?key=AIzaSyCqwpsxzq7CQluloHboNvwZe-VG4wCAQP0&sensor = false">
</script>

<script>
function initialize()
{
	var mapProp ={
	center:google.maps.LatLng(-27.0, 153.0),
	zoom:16,
	mapTypeId:google.maps.MapTypeId.ROADMAP
	};
var map=new
google.maps.Map)document.getElementByID("googleMap"),mapProp);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<div id"googleMap" style="width:500px;height:380px;">

Hello

</div>