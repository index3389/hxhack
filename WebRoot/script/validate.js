// JavaScript Document
var dati;
function validate()
{

	var a = new Array();
	var vali = document.all.vali;
	for(var i=0; i<4; i++)
	{
		a[i] = Math.round(Math.random()*10);
		if(a[i] == 10)
		{
			a[i] = a[i] - 1;
		}
	}
	dati = a[0]+""+a[1]+""+a[2]+""+a[3];
	
	var str = "<font size='5px' color='blue'>"+a[0]+" "+
	a[1]+" "+a[2]+" "+a[3]+"</font>";
	
	vali.innerHTML = str;
}
function validate2()
{
	
	var a = new Array();
	var vali = document.all.vali;
	for(var i=0; i<4; i++)
	{
		a[i] = Math.round(Math.random()*10);
		if(a[i] == 10)
		{
			a[i] = a[i] - 1;
		}
	}
	dati = a[0]+""+a[1]+""+a[2]+""+a[3];
	
	var str = "<font size='5px' color='blue'>"+a[0]+" "+
	a[1]+" "+a[2]+" "+a[3]+"</font>";
	
	vali.innerHTML = str;
}

function validate3()
{
	
	var a = new Array();
	var vali = document.all.vali;
	for(var i=0; i<4; i++)
	{
		a[i] = Math.round(Math.random()*10);
		if(a[i] == 10)
		{
			a[i] = a[i] - 1;
		}
	}
	dati = a[0]+""+a[1]+""+a[2]+""+a[3];
	
	var str = "<font size='4px' color='blue'>"+a[0]+" "+
	a[1]+" "+a[2]+" "+a[3]+"</font>";
	
	vali.innerHTML = str;
}