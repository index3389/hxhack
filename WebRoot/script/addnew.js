　//定义一个二维数组aArray,用于存放城市名称。 
　　var aCity=new Array(); 
　　aCity[0]=new Array(); 
　　aCity[1]=new Array(); 
　　aCity[2]=new Array(); 
　　aCity[3]=new Array(); 
	aCity[4]=new Array();
	aCity[5]=new Array();
	aCity[6]=new Array();
　　//赋值，每个省份的城市存放于数组的一行。 
　　aCity[0][0]="请选择"; 
　　aCity[1][0]="请选择"; 
　　aCity[1][1]="入侵攻击"; 
　　aCity[1][2]="安全防御"; 
　　aCity[1][3]="操作系统"; 
　　aCity[1][4]="建站技术"; 
　　aCity[1][5]="脚本编程"; 
	aCity[1][6]="路由交换";
	aCity[1][7]="灾难恢复";
　　aCity[2][0]="请选择"; 
　　aCity[2][1]="黑客新闻"; 
　　aCity[2][2]="网络新闻"; 
　　aCity[2][3]="时事新闻"; 
	aCity[2][4]="厂商动态";
　　aCity[3][0]="请选择"; 
　　aCity[3][1]="漏洞公告"; 
　　aCity[3][2]="病毒公告"; 
　　aCity[3][3]="升级补丁"; 
	aCity[3][4]="推荐公告"; 
	aCity[4][0]="请选择"; 
　　aCity[4][1]="漏洞扫描"; 
　　aCity[4][2]="加密破解"; 
　　aCity[4][3]="入侵攻击"; 
	aCity[4][4]="后门木马"; 
	aCity[4][5]="溢出程序"; 
　　aCity[4][6]="综合攻击"; 
　　aCity[4][7]="安全防护"; 
	aCity[4][8]="原创发布";
	aCity[5][0]="请选择"; 
　　aCity[5][1]="入侵攻击"; 
　　aCity[5][2]="QQ动画"; 
　　aCity[5][3]="木马动画"; 
	aCity[5][4]="原创发布";
	aCity[6][0]="请选择"; 
　　aCity[6][1]="黑客文化"; 
　　aCity[6][2]="风云人物"; 
　　aCity[6][3]="黑客情感"; 
	aCity[6][4]="经典网文";
　　function ChangeCity() 
　　{ 
	　　var i,iProvinceIndex; 
	　　iProvinceIndex=document.fm.type1.selectedIndex; 
	　　iCityCount=0; 
	　　while (aCity[iProvinceIndex][iCityCount]!=null) 
	　　iCityCount++; 
	　　//计算选定省份的城市个数 
	　　document.fm.type2.length=iCityCount;//改变下拉菜单的选项数 
	　　for (i=0;i<=iCityCount-1;i++)//改变下拉菜单的内容 
	　　document.fm.type2[i]=new Option(aCity[iProvinceIndex][i],i); 
	　　document.fm.type2.focus(); 
　　}