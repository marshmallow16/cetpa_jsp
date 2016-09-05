function test(){
var u=document.getElementById("u").value;
var p=document.getElementById("p").value;
if(u==""|| u==null ){
alert("input the name");
return false;}
if(p==""|| p==null ){
alert("input the password");
return false;}

function show(){
document.location.href="home.html?id=123";
}
}