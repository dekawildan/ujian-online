function showsoal() {
	document.getElementsByClassName("nomor_soal")[0].style.display="block";
	document.getElementsByClassName("button_popup")[0].style.display="none";
	document.getElementsByClassName("button_popup2")[0].style.display="inline-block";
}
function hidesoal() {
	document.getElementsByClassName("nomor_soal")[0].style.display="none";
	document.getElementsByClassName("button_popup2")[0].style.display="none";
	document.getElementsByClassName("button_popup")[0].style.display="inline-block";
}
/*var waktu = 3600;
setInterval(function() {
waktu--;
if(waktu < 1) {
window.location = 'logout.php';
}else{
document.getElementById("waktu").innerHTML = waktu;
}
}, 1000);
*/