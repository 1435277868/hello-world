<%@ page language="java"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
<title>疫情填报系统</title>
<link rel="stylesheet" type="text/css" href="../common/css/normalize.css" /> 
<script type="text/javascript" src="../common/jquery/jquery.min-1.11.js"></script>
<style type="text/css">
html,body{
    width:100%;
    height:100%;
    margin: 0;
	padding: 0;
    /* overflow: hidden; */
}
.center{
    width:100%;
    height:100%;
}
.background{
	height:100%; 
	width: 100%; 
	background:url(image/login.jpg) no-repeat center 0;
	background-size:100% 100%; 
}
.sysname-div{
    position:absolute;
    left:250px;
    top:30px;
}
.logoimg{
    position: relative;
    width:60px;
    height:60px;
    border-radius:40px;
}
#logoimg +label{              
	position: relative;
	font-size: 35px;
	color:#fff;    
	top: -15px;    
	left: 5px;    
}
.lgmain-div{
   position:absolute;
   left:900px;
   top:130px;
   width:400px;
   height:260px;
   padding-top:20px;
   border:1px solid #999999;
   border-radius:4px;
   box-shadow:0px 0px 30px #000;
   background: white;
}
.lgtop-div{
    width: 100%;
	text-align: left;
	text-indent: 25px;
	font-size: 18px;
	margin-bottom: -10px;
	//color: #fff;
}
.lg-div{
   width:350px;
   text-align: center;
   padding:20px;
}
.login-div{
	width: 350px;
	height: 50px;
	border:1px solid #cccccc;
	background: white;
}
input{
	border: none;
	outline: none;
}
.username{
   width:85%;
   height:100%;
   padding-left:50px;   
   background: url(images/login3.png) 15px 14px no-repeat;
}
.password{
   width:85%;
   height:100%;
   padding-left:50px;
   background: url(images/login4.png) 15px 14px no-repeat;
}
.checkbox-div{
	margin-top:10px;
	width: 100px;
	height: 25px;
	vertical-align: middle;
	text-align: left;
}

.isRemember{
    cursor: pointer;
    width: 15px;
    height: 15px;
    position: relative;
    
}
#isRemember +label{       
	width: 20px;    
	height: 20px;    
	cursor: pointer;    
	position: relative;
	font-size: 12px;
	//color:#fff;    
	top: -4px;    
	left: 0px;    
}

.btn-div{
	margin-top:10px;
	width: 130px;
	height: 35px;
	
}
button{
	border: none;
	outline: none;
}
#loginBtn{
	width: 100%;
	text-align: center;
	height: 100%;
	display: inline-block;
	font-weight: bold;
	color: #FFF;
	font-size: 14px;
	vertical-align: middle;
	margin-right: 5px;
	background-color: #238834f2;
	border-radius: 5px;
}
#loginBtn:hover {
	background-color: #007a00;
	border-radius: 5px;
	cursor: pointer;
}
.loginMessage {
    height: 15px;
    margin-bottom: 5px;
    text-align: left;
	color: red;
	font-size: 13px;
	font-weight: normal;
}
</style>
</head>
<body>
<div class="center" align="center">
	<div class="background">
	<div class="sysname-div">
	  <img id="logoimg" class="logoimg" src="image/login.jpg">  
	     <label for="logoimg"> 疫情填报系统</label>
	</div>
			<div class="lgmain-div">
			<div class="lgtop-div">登录</div>
			<form action="index.jsp">
				<div class="lg-div">
				        <div id="loginMessage" class="loginMessage"></div>
				        <div class="login-div">
							<input id="college" class="college" name="college" placeholder="输入学院" value="" type="text" required="required"/>
						</div>					
						<div class="login-div">
							<input id="identity" class="identity" name="identity" placeholder="输入身份（教师0，学生1）" value="" type="text" required="required"/>
						</div>
						<div class="login-div">
							<input id="id" name="id" class="id" placeholder="学号或者工号" value="" type="password" required="required"/>
						</div>
				<div class="btn-div">	
						<button id="loginBtn" type="submit">登&nbsp;&nbsp;&nbsp;录</button>
					</div>					
				</div>
			</form>
			</div>
	</div>
</div>
<!-- 
<script type="text/javascript">
//去掉空格 ======================================================================
function trim(s){  
	return s.replace(/(^\s*)|(\s*$)/g,"");      
}  
// 设置cookie ======================================================================
function setCookie(name,password,days)
{
	
	var exp = new Date(); 
	exp.setTime(exp.getTime() + days*24*60*60*1000);
	document.cookie ="userName="+ escape (name) +"@"+escape(password)+ ";expires=" + exp.toGMTString();
};
//获取cook ======================================================================
function getCookie(objName){//获取指定名称的cookie的值 
	var arr,reg=new RegExp("(^| )userName=([^;]*)(;|$)");
	if(arr=document.cookie.match(reg)) 
		return unescape(arr[2]);
	else 
		return null;
} 
//删除cook ======================================================================
function delCookie(name){//为了删除指定名称的cookie，可以将其过期时间设定为一个过去的时间 
	var exp = new Date();
	exp.setTime(exp.getTime() - 10000);
	var cval=getCookie("userName");
	if(cval!=null) document.cookie= "userName="+cval+";expires="+exp.toGMTString(); 
}

function get(index){
	  var cookie=getCookie("userName");
	  if(cookie!=null){
		return cookie.split('@')[index];
	  }else{
	    return "";
	  }
	}
function loadCookie()
{
	document.getElementById("identity").value=get(0);
	document.getElementById("id").value=get(1);	
}
$(document).ready(function(){	
	loadCookie();
})
function doSubmit()
{
	
	var checked=document.getElementById("isRemember").checked;
	if(checked)
	{
	  var username=document.getElementById("username").value;
	  var password=document.getElementById("password").value;
	  setCookie(username,password,4);
	}else
	{
	  delCookie();
	}
	login();
}

$(document).keydown(function(event){
	if(event.keyCode == 13){
		doSubmit();
	}
});
function login() {
	$("#loginMessage").html("");
	var username=$("#identity").val();
	var p=$("#id").val();
		username=trim(username);
		p=trim(p);
	if (username=="") {
		$("#loginMessage").html("请输入身份");
		$("#identity").focus();
		return;
	}else if (p=="") {
		$("#loginMessage").html("请输入密码");
		$("#id").focus();
		return;
	}
	 $.ajax({
		 url:"http://localhost:18080/yszj/login/login",
		 data:{username:username,password:p},
		 jsonp:'innerSignCallBack',  //服务器端获取回调函数名的key
		 jsonpCallback:'innerSignCallBack', //回调函数名
		 dataType:"jsonp"
	 }).success(function(res){
		 console.log(res)
		 if(res==null)
			 {
			 $("#loginMessage").html("用户名或密码有误，请重新输入");
			 $("#password").focus();
			    return;
			 }
		   if(res.uid!=null)
			 {
			   window.location.href="../index/index.html";		
			 }else if(res.result==0)
			{				 
				 $("#loginMessage").html("用户名或密码有误，请重新输入");
			}
	 }).error(function(e){
		 alert(e.responseText)
	 })

	};
</script> --> 
</body>
</html>
