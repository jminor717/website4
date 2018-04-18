<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
		<title>our game site</title>
		<style type="text/css">
		body {
		background-color: brown;
		
		}
		
		p{
			padding:0;
			margin:0;
		}
		
		.smallroundcorners{
		border-radius: 5px;
		
		}
		
		.medroundcorners{
		border-radius: 15px 5px 15px 5px;
		 
		}
		
		.gamedisplay{
		display: inline-block;
		
		background-color: black;
		width: 256px;
		  
		height: 290px;
		border: 3px solid;
		border-color: darkred;
		margin: 10px;
		
		}
		
		.gametitle{
		background-color: brown;
		width: 256px;
		height: 30px;
		
		
		}
		
		
		#featuredgames{
		
		min-width:300px;
		
		padding:5px;
		margin-left:160px;
		margin-right:300px;
		transition: ease-in-out, margin .4s  ease-in-out;
		}
		
		
		#allgames{
		float:left;
		width:150px;
		height: 1000px;
		border: 3px solid;
		border-color: darkred;
		background-color: darkred;
		
		}
		#banner{
		top:0px;
		left:0px;
		position:fixed;
		margin-right:200px;
		cursor: pointer;
		min-width:1000px;
		height: 100px;
		width:100%;
		 font-size: 400%;
		background-color: #e60000;
		}
		
		#bannerholder{
		
		margin-bottom:10px;
		padding:0px;
		min-width:1000px;
		height: 150px;
		width:100%;
		 font-size: 400%;
		background-color: #e60000;
		}
		
		
		
		#acountopt{
		cursor: pointer;
		float: right;
		margin-right:300px;
		transition: ease-in-out, margin .4s  ease-in-out;
		}
		
		#acountopt{
		float: right;
		height: 50px;
		width:50px;
		}
		#userphoto{
		padding-left:25px;
		padding-right:25px;
		
		}
		#acountoptions{
		position: fixed;
		top:-200px;
		right:300px;
		height: 200px;
		width:200px;
		background-color: black;
		transition: ease-in-out, top .4s  ease-in-out;
		}
		
		#loginwindow{
		padding: 20px;
		heiht: 300px;
		width: 300px;
		background-color: white;
		position: fixed;
		right:50%;
		top:50%;
		visibility: hidden;
		}
		
		
		#canclelog{
		float: right;
		
		}
		
		#loginoverlay{
		height: 100%;
		width:100%;
		background-color:rgba(128,128,128,0.5);
		position: fixed;
		left:0;
		top:0;
		visibility: hidden;
		}
		
		#login{
		visibility: visible;
		
		
		
		
		}
		
		
		
		#pageoptions{
		
		position: fixed;
		right:0;
		top:0;
		}
		
		#showchatbutt{
		float: right;
		visibility: hidden;
		}
		
		
		<!-- start chat style -->
		#hidechatbutt{
		position:fixed;
		right:0px;
		
		
		}
		
		#chatwindow{
		visibility: visible;
		position: fixed;
		background-color: black;
		
		width: 300px;
		height: 100%;
		right:0;
		top:0;
		transition: ease-in-out, width .4s  ease-in-out;
		
		
		}
		
		#chatoptions{
		
		width: 300px;
		height:24px;
		background-color: lightgrey;
		}
		
		#chattabs{
		width: 300px;
		height: 36px;
		background-color: grey;
		}
		.swithchchat{
		background-color: inherit;
		
		border: none;
		outline: none;
		cursor: pointer;
		padding: 7px 8px;
		transition: 0.3s;
		font-size: 17px; 
		
		}
		.swithchchatactive {
		
		color:#c0c0c0;
		border: none;
		outline: none;
		cursor: pointer;
		padding: 7px 8px;
		transition: 0.3s;
		font-size: 17px;
		background-color: #303030;
		}
		
		.swithchchat:hover {
		background-color: #dddddd;
		}
		
		#newchatoverlay{
		height: 100%;
		width:100%;
		background-color:rgba(128,128,128,0.5);
		position: fixed;
		left:0;
		top:0;
		visibility: hidden;
		transition: 0.3s;
		 z-index: 3;
		}
		
		#newchatwindow{
		padding: 20px;
		heiht: 300px;
		width: 300px;
		background-color: white;
		position: fixed;
		right:50%;
		top:50%;
		visibility: hidden;
		 z-index: 4;
		}
		
		#chatuseropt{
		padding: 20px;
		heiht: 300px;
		width: 100px;
		background-color: white;
		position: fixed;
		right:300px;
		//top:50%;
		visibility: hidden;
		 z-index: 4;
		
		}
		#chatuseroptionsoverlay{
		height: 100%;
		width:100%;
		background-color:rgba(128,128,128,0);
		position: fixed;
		left:0;
		top:0;
		visibility: hidden;
		transition: 0.3s;
		 z-index: 3;
		
		
		}
		
		
		#userchats{
		padding: 4px;
		
		float: right;
		background-color: grey;
		display: none;
    	position: fixed;
    	top:56px;
    	right:10px;
    	 z-index: 3;
		}
		
		
		#usercahtscontainer{
		 display: inline;
		 padding: 2px;
		}
		
		#swithcuserchat{
    	display: block;
		}
		
		#chattext{
		position: absolute;
		bottom: 140px;
		width: 300px;
		top:60px;
		background-color: #303030;
		overflow: scroll;
		}
		
		
		.chatentry{
		margin-left:16px;
		white-space:pre-wrap;
		color: #c0c0c0;
		}
		.chatheader{
		color: #fc5200;
		white-space:pre-wrap;
		
		}
		
		#chatinput{
		position: absolute;
		width: 300px;
		height:140px;
		background-color: white;
		bottom: 0px;
		
		}
		
		#comment{
		word-break: break-word;
		overflow: scroll;
		}
		
		.hide{
		visibility: hidden;
		display:block;
		}
		<!-- end chat style -->
		
		
	
		
		
		#tbd{
		float: down;
		margin-left:160px;
		margin-right:300px;
		
		}
		</style>
		<script type="text/javascript">
		var currentchat="general";
		var chakvisable= true;
		var acountoptionsvisible = false;
		var loginvisable = false;
		//var ussing  = "${ user.username    }";
		var isguest='${user.isguest}';
		
		var chat;
		var chatedc;
		
	    var	count =11;
		var previousheight;
		var scroleposition;
		
		function home(){
		}

		function logclick(){
			if(loginvisable){
				document.getElementById("uzer").value="";
				document.getElementById("pass").value="";
				document.getElementById("loginwindow").style.visibility ="hidden";
				document.getElementById("loginoverlay").style.visibility ="hidden";
				loginvisable= false;
			}
			else{
			document.getElementById("loginwindow").style.visibility ="visible";
			document.getElementById("loginoverlay").style.visibility ="visible";
			
			
			loginvisable=true;
			}
		}

	
		function toggleacountoptions(){
			console.log(isguest);
			 if(isguest=='false'){
				 console.log("dsaaaaaaaaaaaaaaaaaaaaaaaaaaa");
				 document.getElementById("login").innerHTML = "logout";
				 document.getElementById("login").onclick=function(){
					 
					 console.log("logout");
						// <!-- %= session.setAttribute( "userid",null ) %> -->
						
						 var urlEncodedData = "";
						var urlEncodedDataPairs = [];
						var logout = true;
						
						
						urlEncodedDataPairs.push(encodeURIComponent("logout") + '=' + encodeURIComponent(logout));
						urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
						
						 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
						
						
						var xmlreq = new XMLHttpRequest();
						xmlreq.open("post", "index");
						xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
						xmlreq.send(urlEncodedData);
						
						xmlreq.onload=function(){
							if (this.status==200){
								//isguest= JSON.parse(this.responseText);
								isguest=this.response;
								console.log("isguest");
								console.log(isguest);
								newchat(event,'general');
								getusechats();
							}
						}
					 
						toggleacountoptions();
				 }
				 
			 }
			 else{
				 document.getElementById("login").innerHTML = "login";
				 document.getElementById("login").onclick=function(){
						if(loginvisable){
							document.getElementById("uzer").value="";
							document.getElementById("pass").value="";
							document.getElementById("loginwindow").style.visibility ="hidden";
							document.getElementById("loginoverlay").style.visibility ="hidden";
							loginvisable= false;
						}
						else{
						document.getElementById("loginwindow").style.visibility ="visible";
						document.getElementById("loginoverlay").style.visibility ="visible";
						
						
						loginvisable=true;
						}
					}
				 
			 }
			 
			if(acountoptionsvisible){
				document.getElementById("acountopt").style.visibility="visible";
				document.getElementById("acountoptions").style.top="-200px";
				//document.getElementById("cancleacountopt").style.visibility="hidden";
				acountoptionsvisible=false;
				document.getElementById("loginpost").method="get";

			}
			else{
				document.getElementById("acountopt").style.visibility="hidden";
				document.getElementById("acountoptions").style.top="0px";
				//document.getElementById("cancleacountopt").style.visibility="visible";
				acountoptionsvisible=true;
			}
			document.getElementById("loginpost").method = "post";
		}
		
		
		///////////start chat
		function  toggleuserchats(inn){
			if(inn==true){
				document.getElementById("userchats").style.display = "inline";
			}
			else{
				document.getElementById("userchats").style.display = "none";
			}
			
			
		}
		
		
		document.onload = function(){

			post();
			getusechats();
		}
		
		function togglechat(){
			
			if(chakvisable){
				document.getElementById("chatwindow").style.width = "0px";
				document.getElementById("showchatbutt").style.visibility ="visible";
				document.getElementById("featuredgames").style.marginRight="0px";
				chakvisable=false;
			}
			else{
				document.getElementById("chatwindow").style.width = "300px";
				document.getElementById("showchatbutt").style.visibility ="collapse";
				document.getElementById("featuredgames").style.marginRight="300px";
				chakvisable=true;
			}
			
			
		}
		
		
		function post(){
			
			 var urlEncodedData = "";
			var urlEncodedDataPairs = [];
			var text = document.getElementById("chattextarea").value;
			var chatedc;
			document.getElementById("chattextarea").value='';
			
			urlEncodedDataPairs.push(encodeURIComponent("chatinputtext") + '=' + encodeURIComponent(text));
			urlEncodedDataPairs.push(encodeURIComponent("numberofpost") + '=' + encodeURIComponent(count));
			urlEncodedDataPairs.push(encodeURIComponent("getmoreposts") + '=' + encodeURIComponent(false));
			urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
			urlEncodedDataPairs.push(encodeURIComponent("chatname") + '=' + encodeURIComponent(currentchat));
			
			 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
			 
			 
			 
			 var xmlreq = new XMLHttpRequest();
			 xmlreq.open("post", "index");
				xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				xmlreq.send(urlEncodedData);
			 
			 
				xmlreq.onreadystatechange = function() {
			        if (this.readyState == 4 && this.status == 200) {
			        	chatedc= JSON.parse(this.responseText);
						console.log(chatedc)
			        	refreshchat(chatedc);
			        	
			       }
			    };

		}
		
		function get(){
			var xmlreq = new XMLHttpRequest(); 
			//xmlreq.open('get','index'+ encodeURIComponent(ussing),true);
			xmlreq.send();
			
			xmlreq.onload=function(){
				if (this.status==200){
					
				
				}
			}
			refreshchat(null);
			 
			
		}
		
		function refreshchat(chats){
			
			previousheight=document.getElementById('chattext').scrollHeight;
			scroleposition =document.getElementById('chattext').getScrollingPosition;
			chat=${chatposts};
			
			console.log(scroleposition);
			
			if(chats!=null){
				chat=chats;
			}
			
			console.log(chat);
		//	console.log("${ user.username    }");
		
			  count = Object.keys(chat).length;
			  console.log(count);
			
			
			
			var previousposts = document.getElementById('chattext').innerHTML;
			document.getElementById("chattext").innerHTML = "";
			var toAdd = document.createDocumentFragment();
			
			var neHr = document.createElement('hr');
			var newbutt = document.createElement('button');
			newbutt.innerHTML="show more posts";
			newbutt.id="morepostsbutt";
			 toAdd.appendChild(newbutt);
			 toAdd.appendChild(neHr);
			
			
			
			
			for(var i=0; i < chat.length; i++){
			   var newDiv = document.createElement('p');
			   var newHr = document.createElement('hr');
			   var newP = document.createElement('p');
			   var time= new Date();
			   var now = time.getTime();

			   
			   var posttext=chat[i].post;
			   //console.log(posttext);
			   var username=chat[i].user;
			   newP.id=chat[i].usid;
			   username+=" ";
			   var posttime=chat[i].mit;
			   now-=posttime;
			   if(now<60000){
				   now=now/1000
				   now= Math.floor(now);
				   username+=now;
				   username+=" seconds agao"  
			   }
			   else if(now<3600000){
				   now=now/60000
				   now= Math.floor(now);
				   username+=now;
				   username+=" minutes agao"
			   }
			   else if(now<86400000){
				   now=now/3600000
				   now= Math.floor(now);
				   username+=now;
				   username+=" hours agao"
			   }
			   else if(now<(86400000*365)) {
				   now=now/86400000;
				   now= Math.floor(now);
				   username+=now;
				   username+=" days agao"
			   }
			   else {
				   now=now/(86400000*365)
				   now= Math.floor(now);
				   username+=now;
				   username+=" years agao"  
			   }
			
			   //newDiv.id = 'r'+i;
			   newDiv.className = 'chatentry';
			   newP.className='chatheader';
			   
			   newP.onclick = function() { 
				   otheruseroptions(event, true ,this.id);
			   };
			   newDiv.innerHTML = posttext;
			   newP.innerHTML = username;
			   toAdd.appendChild(newP);
			   toAdd.appendChild(newDiv);
			   toAdd.appendChild(newHr);
			}
			//toAdd.appendChild(previousposts);
			document.getElementById("chattext").appendChild(toAdd);
			//document.getElementById("chattext").appendChild(previousposts);
			
			
			var element = document.getElementById("chattext");
			var currentscroleheight=document.getElementById('chattext').scrollHeight;
			if(currentscroleheight-previousheight>100)
				element.scrollTo(0, currentscroleheight-previousheight);
			else{
				element.scrollTo(0, currentscroleheight-scroleposition);
				element.scrollTo(0, currentscroleheight);
			}
			//element.scrollTop = element.scrollHeight;
			document.getElementById("morepostsbutt").onclick = function(){
				console.log("sup");
				
				var urlEncodedData = "";
				var urlEncodedDataPairs = [];
				
				
				
				urlEncodedDataPairs.push(encodeURIComponent("numberofpost") + '=' + encodeURIComponent(count));
				urlEncodedDataPairs.push(encodeURIComponent("getmoreposts") + '=' + encodeURIComponent(true));
				urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
				urlEncodedDataPairs.push(encodeURIComponent("chatname") + '=' + encodeURIComponent(currentchat));
				
				 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
				
				
				var xmlreq = new XMLHttpRequest();
				xmlreq.open("post", "index");
				xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				xmlreq.send(urlEncodedData);
					
				xmlreq.onload=function(){
					if (this.status==200){
						//console.log(this.response);
						chatedc= JSON.parse(this.responseText);
						console.log(chatedc)
						refreshchat(chatedc);
					}
				}
				
			};
		}
		
		function newchat(thisbut, chatname){
			currentchat=chatname;
			var chattabs = document.getElementsByClassName("swithchchatactive");
		    for (i = 0; i < chattabs.length; i++) {
		    	chattabs[i].className = chattabs[i].className="swithchchat";
		    	console.log(i);
		    }
		    //document.getElementById(chatname).style.display = "block";
		    thisbut.currentTarget.className += "active";
		    
		    var urlEncodedData = "";
			var urlEncodedDataPairs = [];
			var text = document.getElementById("chattextarea").value;
			var chatedc;
			document.getElementById("chattextarea").value='';
			
			//urlEncodedDataPairs.push(encodeURIComponent("numberofpost") + '=' + encodeURIComponent(count));
			urlEncodedDataPairs.push(encodeURIComponent("getmoreposts") + '=' + encodeURIComponent(false));
			urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
			urlEncodedDataPairs.push(encodeURIComponent("chatname") + '=' + encodeURIComponent(currentchat));
			
			 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
			 
			 
			 
			 var xmlreq = new XMLHttpRequest();
			 xmlreq.open("post", "index");
				xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				xmlreq.send(urlEncodedData);
			 
			 
				xmlreq.onreadystatechange = function() {
			        if (this.readyState == 4 && this.status == 200) {
			        	chatedc= JSON.parse(this.responseText);
						console.log(chatedc);
			        	refreshchat(chatedc);
			        	document.getElementById("chattext").scrollTo(0, document.getElementById('chattext').scrollHeight);
			        	
			       }
			    };

			console.log(chatname);
		}
		
		
		function getusechats(){
			var urlEncodedData = "";
			var urlEncodedDataPairs = [];

			urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
			urlEncodedDataPairs.push(encodeURIComponent("getchatnames") + '=' + encodeURIComponent(true));
			
			 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
			
			
			var xmlreq = new XMLHttpRequest();
			xmlreq.open("post", "index");
			xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			xmlreq.send(urlEncodedData);
				
			xmlreq.onload=function(){
				if (this.status==200){
					//console.log(this.response);
					chatedc= JSON.parse(this.responseText);
					console.log(chatedc)
					makeusechats(chatedc);
				}
			}
			
			
			
		}
		
		function makeusechats(chatnames){
		
			document.getElementById("userchats").innerHTML = "";
			var toAdd = document.createDocumentFragment();
			
			
			var newbutt = document.createElement('button');
			   newbutt.id='swithcuserchat';
			   newbutt.className = 'swithchchat';
			   newbutt.setAttribute("onclick","javascript:newchat(event,'general');");
			   newbutt.innerHTML="gen";
			   toAdd.appendChild(newbutt);
			
			   newbutt = document.createElement('button');
			   newbutt.id='swithcuserchat';
			   newbutt.className = 'swithchchat';
			   newbutt.setAttribute("onclick","javascript:newwuserchat(true);");
			   newbutt.innerHTML="create/add chat";
			   toAdd.appendChild(newbutt);
			
			   
			   if(chatnames!=null){
					for(var i=0; i < chatnames.length; i++){

			  			var newbutt = document.createElement('button');
			   			newbutt.id='swithcuserchat';
			   			newbutt.className = 'swithchchat';
			   			var chatnammm=chatnames[i];
			   			//newbutt.onclick="newchat(event,'general') ";
			   			newbutt.onclick = function() { 
			   				newchat(event, this.innerHTML);
			   	        };
			   
			   
			   			newbutt.innerHTML=chatnammm;
			   
			   			toAdd.appendChild(newbutt);
					}
			   }
			//toAdd.appendChild(previousposts);
			document.getElementById("userchats").appendChild(toAdd);
			
		}
		getusechats();
		function newwuserchat(make){
			if(make==true){
				document.getElementById("newchatoverlay").style.visibility ="visible";
				document.getElementById("newchatwindow").style.visibility ="visible";
			}
			else{
				document.getElementById("newchatoverlay").style.visibility ="hidden";
				document.getElementById("newchatwindow").style.visibility ="hidden";
				//document.getElementById("pass").value="";
			}
			
		}
		function createuserchat(add){
			var urlEncodedData = "";
			var urlEncodedDataPairs = [];
			var text = document.getElementById("inputchatname").value;
			document.getElementById("inputchatname").value='';
			if(add==true){
				urlEncodedDataPairs.push(encodeURIComponent("addusertochat") + '=' + encodeURIComponent(true));
			}
		
				urlEncodedDataPairs.push(encodeURIComponent("inputchatname") + '=' + encodeURIComponent(text));
		
			urlEncodedDataPairs.push(encodeURIComponent("isasync") + '=' + encodeURIComponent(true));
			urlEncodedDataPairs.push(encodeURIComponent("getchatnames") + '=' + encodeURIComponent(true));
			
			
			
			 urlEncodedData = urlEncodedDataPairs.join('&').replace(/%20/g, '+');
			
			
			var xmlreq = new XMLHttpRequest();
			xmlreq.open("post", "index");
			xmlreq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
			xmlreq.send(urlEncodedData);
				
			xmlreq.onload=function(){
				if (this.status==200){
					var resp=this.responseText;
					//console.log(this.response);
					try {
						chatedc= JSON.parse(resp);
						console.log(chatedc)
						makeusechats(chatedc);
					}
					catch(err) {
						window.alert(resp);
					}
					
				}
			}
			
			
			
			
		}
		
		
		
	
		
		function otheruseroptions(event,make,id){//make= boolean
			//console.log(id);
			//console.log(event.pageY);
			var ypos=event.pageY;
			ypos-=window.pageYOffset;
			//console.log(ypos);
			if(make==true){
				document.getElementById("chatuseroptionsoverlay").style.visibility ="visible";
				document.getElementById("chatuseropt").style.visibility ="visible";
				document.getElementById("chatuseropt").style.top=ypos+"px";
				document.getElementById("pmid").value=id;
				console.log(document.getElementById("pmid").value);
			}
			else{
				document.getElementById("chatuseroptionsoverlay").style.visibility ="hidden";
				document.getElementById("chatuseropt").style.visibility ="hidden";
				//document.getElementById("pass").value="";
			}
			
			
		}
		
		
		
		
		//setInterval(refreshchat(null),1);
		
		///////////end chat  
		
		
	</script>
	</head>

	<body onload="post()">
	
	
	
	<div id="bannerholder" onclick="home()">
			
			
		</div>
		<div id="banner" onclick="home()">
			this is the title of our website (img)
			<a>
				<img id="acountopt" onclick="toggleacountoptions()" src="img/loginicon.png"  />
			
			</a>
		</div>
		

			<div class="smallroundcorners" id= "acountoptions">
			<img id="userphoto" onclick="toggleacountoptions()" src="img/largeloginicon.png"  />
			
				<button id="login"  onclick="logclick()" >login</button>
				
				<form action="${pageContext.servletContext.contextPath}/userinfo" method="get">
					<input type="Submit" name="submit" value="userinfo">
				</form>
			
			
			
				
			</div>
		
		
		
		<div id="pageoptions">
		
			<button id="showchatbutt" onclick="togglechat() ">__</button>
	
			
			
		
		 </div>
		 
		 <!-- start chat html /////////////////////////-->
		 
		 
		<div id="chatwindow">
			<div id="chatoptions">
			<button id="hidechatbutt" onclick="togglechat() ">__</button>
			<!-- <button id="refresfchatbut" onclick="post() ">refresh</button> -->
			<button id="refresfchatbut" onclick="post()  ">refresh</button>
			
			
				
			</div>
		<div id="chattabs" >
				<button class="swithchchatactive" onclick="newchat(event,'general')  ">general</button>
				<button class="swithchchat" onclick="newchat(event,'towerdef1')  ">towerdef1</button>
				<div id="usercahtscontainer" onmouseover="toggleuserchats(true);" onmouseout="toggleuserchats(false);">
					<button class="swithchchat"  id ="showuserchats">your chats</button>
					<div id="userchats">
					<!-- <button id="swithcuserchat" class=" swithchchat" onclick="newchat(event,'general')  ">chat 1</button>-->
					
					</div>
					
				</div>
				
			</div>
			
			<div id="chattext">
			
		
		
			</div>
			
			
			<div id="chatinput">
				<p>add comment</p>
				
					<textarea class="smallroundcorners" name="chatinputtext" rows="5" cols="38" id="chattextarea" > </textarea>
				
				
				
				
				<button onclick="post()">post</button>
				
				
				
				
			</div>
			
		 </div><!-- end fixed chat window -->
		  <div id="newchatoverlay"  onclick="newwuserchat(false)" >
        
        
        </div>
        
        
        <div class="medroundcorners" id="newchatwindow">
			
				<table>
					<tr>
						<td class="label">name of chat:</td>
					<td><input id="inputchatname" type="text" placeholder="Enter chat name" name="spec_chatname" size="20" class="smallroundcorners"  /></td>
					</tr>
					
                
				</table>
				<button   onclick="newwuserchat(false)" >cancle</button>

			<button   onclick="createuserchat(false)" >create chat</button>
			<button   onclick="createuserchat(true)" >add  chat</button>
		</div>
		
		
		 <div id="chatuseroptionsoverlay"  onclick="otheruseroptions(false)" >        </div>
        
        
        <div class="medroundcorners" id="chatuseropt">
			<button   onclick="otheruseroptions(false)" >cancle</button>
			
			<form action="${pageContext.servletContext.contextPath}/pmpage" method="post">
				<!--  -->
					
					<input name="newuser" type="submit" value="privatte mesage" />
					<input class="hide" id="pmid" type="text" name="pmid" value="0" >
				</form>
			<!--<button   onclick="" >blacklist (WIP)</button>-->
		</div>
		
		
		<!--end chat html -->
		
		
		
		
		<div id ="allgames">
		<ul>
			<li> 
				<form action="${pageContext.servletContext.contextPath}/Gamewindow" method="get">
					<input name="newuser" type="submit" value="game 1?!?!?!?!?" />
				</form>
			</li>
			<li>
			<form action="${pageContext.servletContext.contextPath}/Game2window" method="get">
					<input name="newuser" type="submit" value="game 2!!!!!!!!" />
				</form>
			</li>
			<li><form action="${pageContext.servletContext.contextPath}/Game3window" method="get">
					<input name="newuser" type="submit" value="game 3ĦĦĦĦĦiIiĦĦĦĦĦĦ" />
				</form>
			</li>
		</ul>	
		<%= session.getAttribute( "userid" ) %>
		
		 </div>
		
		
		
		
			
	
		<div id="featuredgames"> 
		
			<div class= "gamedisplay">
			<form action="${pageContext.servletContext.contextPath}/Gamewindow" method="get">
				
				<input type="image" src="img/giph.gif" alt="Submit" > 
				<div class="gametitle">
					<input name="newuser" type="submit" value="game 1?!?!?!?!?" />
				</div>
			</form>
			</div>
			
			<div class= "gamedisplay">
				<img src="img/giph.gif" />
	
				<div class="gametitle">
					game2
				</div>
	
			</div>
			
			<div class= "gamedisplay">
			<form action="${pageContext.servletContext.contextPath}/Game3window" method="get">
				
					<input type="image" src="img/game3snap.PNG" alt="Submit" onmouseover="this.src='img/giphy.gif'" onmouseout="this.src='img/game3snap.PNG'"style="width:256px;height:256px;"  > 
				<div class="gametitle">
					<input name="newuser" type="submit" value="game 3ĦĦĦĦĦiIiĦĦĦĦĦĦ" />
				</div>
			</form>
			</div>
			
			
			<div class= "gamedisplay">
				<img src="img/giph.gif"  />
					
				<div class="gametitle">
					game4
				</div>

			</div>
			
		</div>

        <div id="loginoverlay"  onclick="logclick()" >
        
        
        </div>
         
        
        <div class="medroundcorners" id="loginwindow">
			<form id="loginpost" action="${pageContext.servletContext.contextPath}/index" method="post">
				<table>
					<tr>
						<td class="label">username:</td>
					<td><input  id="uzer" type="text" placeholder="Enter Username" name="username" size="20" class="smallroundcorners" value="${ model.username     }" /></td>
					</tr>
					<tr>
						<td class="label">Password:</td>
					<td><input id="pass" type="password" placeholder="Enter password" name="password" size="20" class="smallroundcorners" value="${  model.password   }" /></td>
                    
					</tr>
                
				</table>
				<input type="Submit" name="loginsubmit" value="login">
			</form>
			
			  <form action="${pageContext.servletContext.contextPath}/newuser" method="get">
			
				<input name="newuser" type="submit" value="new user" />
			
		
			</form>
			
			<button id="canclelog"  onclick="logclick()" >cancle</button>
		</div>
	</body>
</html>

