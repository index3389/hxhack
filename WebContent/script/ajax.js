var xmlhttp;

function create_ajax()
{
	if(window.XMLHttpRequest)
	{
		xmlhttp = new XMLHttpRequest;
	}
	else
	{
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function sendRequest(url)
{
	create_ajax();
	
	xmlhttp.open("GET",url,true);
	
	xmlhttp.onreadystatechange = back;
	
	xmlhttp.send(null);
}

function back()
{
	if(xmlhttp.readyState == 4)
	{
		if(xmlhttp.status == 200)
		{
			var msg = xmlhttp.responseText;
			alert(msg);
		}
	}
}
