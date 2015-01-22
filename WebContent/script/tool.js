function zhuye(obj,vrl)
{
        try
        {
                obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl);
        }
        catch(e)
        {
            if(window.netscape)
            {
                    try
                    {
                            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                    }
                    catch (e)
                    {
                            alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
                    }
                    var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                    prefs.setCharPref('browser.startup.homepage',vrl);
             }
        }
}


function AddFavorite(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}


function backopen()
{
	window.history.go(-1);
}

function regcheck()
{
	var u = document.all.hackName.value;
	var p = document.all.hackPass.value;
	var p1 = document.all.hackPass1.value;
	var m = document.all.hackMail.value;
	var w = document.all.question.value;
	var a = document.all.answer.value;
	var d = document.all.validate.value;
	
	var wan = document.getElementById("wan");
	
	if(u == "")
	{
		alert("用户名不能为空！！！");
	}
	else if(p == "")
	{
		alert("密码不能为空！！！");
	}
	else if(p1 == "")
	{
		alert("确认密码不能为空！！！");
	}
	else if(p != p1)
	{
		alert("两次密码不相同，无法注册！！！");
	}
	else if(m == "")
	{
		alert("邮箱不能为空！！！");
	}
	else if(w == "")
	{
		alert("安全问题不能为空，找回密码时要用的！！！");
	}
	else if(a == "")
	{
		alert("答案不能为空");
	}
	else if(d == "")
	{
		alert("验证码不能为空！！！");
	}
	else if(d != dati)
	{
		alert("验证码不正确！！！");
	}
	else if(wan.checked != true)
	{
		alert("不同意本站的规定的不能注册！！！");
	}
	else
	{
		document.all.fm.submit();
	}
}

function reg_pass(n)
{
	if(n.value == "" || n.value.length < 6)
	{
		document.all.reg_p1.innerHTML = "<font color='red'>"+
					"<b>密码长度长度必须控制在6--16</b></font>";
		document.all.butt.disabled = true;
	}
	else 
	{
		document.all.reg_p1.innerHTML = "<font color='blue'>"+
					"<b>正确</b></font>";
	}
}
function reg_pass1(n)
{
	var nn = document.all.hackPass.value;
	var str = n.value;
	if(str.length < 6)
	{
		document.all.reg_p2.innerHTML = "<font color='red'>"+
					"<b>密码长度长度必须控制在6--16</b></font>";
	}
	else if(str != nn)
	{
		document.all.reg_p2.innerHTML = "<font color='red'>"+
					"<b>两次密码必须一样</b></font>";
	}
	else
	{
		document.all.reg_p2.innerHTML = "<font color='blue'>"+
					"<b>正确</b></font>";
	}
}

function reg_m(n)
{
	if(n.value == "")
	{
		document.all.reg_mail.innerHTML = "<font color='red'>"+
					"<b>邮箱不能为空</b></font>";
	}
	else
	{
		document.all.reg_mail.innerHTML = "<font color='blue'>"+
					"<b>正确</b></font>";
	}
}

function reg_q(n)
{
	if(n.value == "")
	{
		document.all.reg_q.innerHTML = "<font color='red'>"+
					"<b>安全问题不能为空的</b></font>";
	}
	else
	{
		document.all.reg_q.innerHTML = "<font color='blue'>"+
					"<b>正确</b></font>";
	}
}

function reg_a(n)
{
	if(n.value == "")
	{
		document.all.reg_a.innerHTML = "<font color='red'>"+
					"<b>答案不能为空</b></font>";
	}
	else
	{
		document.all.reg_a.innerHTML = "<font color='blue'>"+
					"<b>正确</b></font>";
	}
}

function on_enter()
{
	if(event.keyCode == '13')
	{
		regcheck();
	}
}























