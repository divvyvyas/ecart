function login()
{
	$('body').css('overflow','hidden');
	$('#head').css({'filter': 'blur(5px)','z-index': '0', 'pointer-events': 'none'});
	$('#blur').css({'filter': 'blur(5px)','z-index': '0', 'pointer-events': 'none'});
	$('#signup').css({'visibility': 'hidden'});
	$('#login').css({'visibility': 'visible','z-index': '1'});
}
function signup()
{
	$('body').css('overflow','hidden');
	$('#head').css({'filter': 'blur(5px)','z-index': '0', 'pointer-events': 'none'});
	$('#blur').css({'filter': 'blur(5px)','z-index': '0', 'pointer-events': 'none'});
	$('#signup').css({'visibility': 'visible', 'z-index': '1'});
	$('#login').css({'visibility': 'hidden'});
}
function sshow()
{
	$('body').css('overflow','visible');
	$('#head').css({'filter': 'blur(0px)', 'z-index': '1', 'pointer-events': 'visible'});
	$('#blur').css({'filter': 'blur(0px)', 'pointer-events': 'visible'});
	$('#signup').css({'visibility': 'hidden'});
	$('#login').css({'visibility': 'hidden'});
}
function loginFirst()
{
	alert("You Need To Login First..!!");
	login();
}
function search1(str)
{
	var xhttp;
	if(str.length==0)
	{
		document.getElementById('search').innerHTML="";
		return;
	}
	xhttp = new XMLHttpRequest();
	xhttp.open("GET", "demo.jsp?search="+str, true);
	xhttp.send();
	xhttp.onreadystatechange = function() {
		if(this.readyState==4 && this.status==200)
		{
			document.getElementById("search").innerHTML=this.responseText;
		}
	};
}