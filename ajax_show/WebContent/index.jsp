<!doctype html>
<html>
<head>
<script src="jquery.js"></script>
<script>
$(document).ready(function(){
$("#n").keyup(function(){
	$v=$("#n").val();
//	$.get("home.jsp?id="+$v+"",function(result){
	$.post("home.jsp",{id:$v},function(result){
	$("#m").html(result);
	});
});
});
</script>
</head>
<body>
<div id="m">load here</div>
N:<input type="text" name="n" id="n">
<!-- <button type="button">LOAD</button> -->
</body>
</html>
