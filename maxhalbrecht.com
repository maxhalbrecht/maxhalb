<!DOCTYPE html>
<html>
<head>
	<title> Max Halbrecht's Webpage </title>
	<link rel="icon" href="https://thumb.ibb.co/ij1pTk/Max_Halbrecht_com_Icon.png" type="image/png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {margin: 0;}

ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: teal;
}

ul.topnav li {float: left;}

ul.topnav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 24px;
    cursor: pointer;
    height: 30px;
}

ul.topnav li a:hover:not(.active) {background-color:rgb(0, 100, 100);}

li {border-right: 1px solid white;}

li:last-child {border-right: none;border-left: 1px solid white;}

ul.topnav li.right {float: right;}

ul.topnav li.title {
    border-right: none;
    background-image: url('https://i.imgsafe.org/11/11229082ea.png');
    background-repeat: no-repeat;
    background-position: 65% 50%;
    background-size: 40%;
    height: 55px;
    width: 50%;
}

@media screen and (max-width: 600px){
    ul.topnav li.right, ul.topnav li {float: none}
    ul.topnav li.right {border-top:1px solid white}
    ul.topnav li.title{background-position:50% 50%;background-size:100%;margin:0 25%;border-bottom:0}
    ul.topnav li {border-right: none;border-left: none;border-bottom:1px solid white;}
}

.columna {
    float: left;
    width: 45%;
    margin: .5% 2.5%;
    text-align: center;
}

.columnb {
    float: left;
    width: 30%;
    margin: 1.666%;
}

.columnbx{
	float: left;
	width:30%;
	margin:1.666%;
}
.columnby{
	float:left;
	width:30%;
	margin:1.666%;
}

@media (max-width: 600px){
	.columnbx{width:18%;margin:1%}
	.columnby{width:58%;margin:1%}
}

.columnc {
	float: left;
	width: 24%;
	margin: 0% .5%;
	text-align: justify;
}

.row:after {
    content: "";
    display: table;
    clear: both;
}

@media (max-width: 600px) {
    .column {
        width: 100%;
    }
}

.container {
  position: relative;
  width: 24%;
  margin: 0 .5%;
  float: left;
  align: center;
}

.image {
  display: block;
  width: 100%;
  height: 400px;
  border-radius: 15px;
}

.overlay {
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  background-color: teal;
  border-radius: 15px;
  overflow: hidden;
  width: 100%;
  height: 0;
  transition: .5s ease-in-out;
}

.container:hover .overlay {
  bottom: 0;
  height: 100%;
}

.text {
  white-space: nowrap; 
  color: white;
  font-size: 20px;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}

@media (max-width: 600px) {
    .container {
        width: 98%;
        margin: 1%;
    }
}
@media (max-width: 600px) {
	.columnc{
		width: 98%;
		margin: 1%;
	}
}

.aboutMe {
	border-width: 8px;
	border-style: ridge groove groove ridge;
	border-color: teal #FF8C00;
	border-radius: 25px;
	width: auto;
	height: 425px;
	margin: 1% 1%;
}

.aboutMeText {
	margin: 1% 1%;
	text-align: center;
}

.button {
	display: block;
	float: left;
	margin: 0 5.55%;
	padding: 15px 25px;
	font-size: 24px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: teal;
	width: 10%;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px black;
	vertical-align: center;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: .5s;
}

.button span:after {
	content: '>>';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -40px;
	transition: .5s;
}

.button:hover span {padding-right:40px}

.button:hover span:after {opacity: 1;right: 0;}
.button:active {
	background-color: #FF8C00;
	box-shadow: 0 5px teal;
	transform: translateY(4px);
}

@media (max-width: 600px){
	.aboutMe{
		height: 1200px;
	}
	.button{
		float:none;
		width: 80%;
		margin: 3% 4%;
	}
}	

.disclaimer {
	display: block;
	text-align: center;
	font-size: 12px;
	background-color: gray;
	border-top: 2px solid black;
}

table {
	border-collapse: collapse;
	width: 60%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
	background-color: teal;
	color: white;
	font-weight: bold;
}

.parallax {
	background-image: url('https://image.ibb.co/jzPUOk/Miami_Dolphins_Wallpaper.png');
	height: 500px;
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

@media (max-width: 800px){
	.parallax{
		height: 200px;
	}
}
.animate {width: 100px;height: 100px;background-color: teal;position: relative; 
-webkit-animation-name: coloredBall; -webkit-animation-duration: 3s;-webkit-animation-iteration-count: infinite;animation-name: example;animation-iteration-count: infinite;border-radius:100px;}
@-webkit-keyframes example {0%   {background-color:teal; left:36.5%; top:25px;}25%  {background-color: #FF8C00; left:56.5%; top:25px;}50%  {background-color:teal; left:56.5%; top:175px;}75%  {background-color: #FF8C00; left:36.5%; top:175px;;}100% {background-color:teal; left:36.5%; top:25px;}}
@keyframes example {0%   {background-color:teal; left:36.5%; top:25px;}25%  {background-color: #FF8C00; left:56.5%; top:25px;}50%  {background-color:teal; left:56.5%; top:175px;}75%  {background-color: #FF8C00; left:36.5%; top:175px;;}100% {background-color:teal; left:36.5%; top:25px;}}

@media (max-width: 800px){
	.animate {display:none}
}
</style>
</head>
<body>
 <div style="display:block;" id="navBar">
<ul class="topnav">
  <li><a class="active" style="background-color:#FF8C00" id="homeButton" onclick="homeFunction()">Home</a></li>
  <li><a id="MNButton" style="background-color:teal" onclick="MNFunction()">Max News</a></li>
   <li><a id="aboutButton" style="background-color:teal" onclick="aboutFunction()">About</a></li>
  <li class="title"></li>
  <li class="right"><a id="contactButton" style="background-color:teal" onclick="contactFunction()">Contact</a></li>
</ul>
</body>
<div style="background-color:#ffd199;display:block;" id="home">
<div class="row" style="background-color:#ffd199">
	<div class="columna">
		<h2> What is this? </h2>
		<p> It is a personal project where I have developed a webpage completely through HTML; no Weebly, Google Sites, GoDaddy, or anything of the sort. As you can see below, I have pictures and memoirs of my life, all in one webpage of my design. If you want, please read through, as this has taken me a lot of time.</p>
	</div>
	<div class="columna">
		<h2> So why then? </h2>
		<p> The real question you should be asking is "Why not?" I have now an understanding of how HTML, CSS, and Javascript works, which is very fun and applicable to real life. I could possibly go into computer science, but I wouldn't really be interested in that. We'll see. Anyways, feel free to read through the page!</p>
	</div>
</div>
<div class="container">
	<img src="https://thumb.ibb.co/ebxkEQ/Kodi.jpg" alt="Kodi" class="image">
	<div class="overlay">
		<div class="text">My dog, Kodi.
		</div>
	</div>
</div>
<div class="container">
	<img src="http://media.npr.org/assets/img/2015/08/30/mt.-mckinley-e8c64bfb900d922bb238289303bb1825b2908abb-s900-c85.jpg" alt="Alaska" class="image">
	<div class="overlay">
		<div class="text">My 2016 trip to Alaska.
		</div>
	</div>
</div>
<div class="container">
	<img src="http://static.nfl.com/static/content/public/pg-photo/2014/12/21/0ap3000000447189/vikings-dolphins-football-matt-asiata-oliver-vernon_pg_600.jpg" alt="DolphinsGame" class="image">
	<div class="overlay">
		<div class="text">First Miami Dolphins game.
		</div>
	</div>
</div>
<div class="container">
	<img src="https://thumb.ibb.co/gbYp8k/Encampment_Seniors.png" alt="DvV" class="image">
	<div class="overlay">
		<div class="text">2017 USY Encampment.
		</div>
	</div>
</div>

<div class="row">
	<div class="columnc">
		<p> My dog Kodi was rescued from a family that couldn't take care of him in 2010. Since then, he has grown to be the fluffy fur ball he is today. As you can see, he is definitely a good pillow. However happy in our home, he still will destroy it when he gets the chance. We've taken to putting a tracking collar on him for when he runs away as well. A happy fluff, he would never bite, even if you put your face in his food bowl.</p>
	</div>
	<div class="columnc">
		<p> In 2016, my extended family and I made a trip to Alaska. It's honestly a beautiful place, and we toured all over. We were staying in different cities at first, then took a train to Anchorage, and got on a cruise. We rode the Princess Star, and it was a great experience. On top of this, the food was great. I would say that my favorite part about it was the excavation in the mountains to look for gold in the streams.</p>
	</div>
	<div class="columnc">
		<p>Evident of my huge fandom for the Miami Dolphins, my first game in person was at the Dolphins' stadium in Miami. The game was against the Minnesota Vikings, and we ended up winning by a blocked punt for a safety when the game was almost going to be in overtime. My first game, and the first time getting onto the field, I saw most of the players warming up, and even watched as Jarvis Landry scored a touchdown 100 feet from me. </p>
	</div>
	<div class="columnc">
		<p>I am a huge part of the United Synagogue Youth. From 8th grade Spring Convention, I have been active in the regional and chapter community. Some of my best friends go to these conventions. Recently, I planned my senior Encampment 2017 with the REB and other Tri-Chairs. Living in North Carolina, I am so blessed to have contacts and friends 300 miles from me, and a great opportunity to see them when I can. </p>
	</div>
</div>

<div class="aboutMe">
	<div class="aboutMeText">
		<h2> About Me </h2>
		<p> I am a high school senior, I am going to graduate late spring of 2018. I am Jewish, more culturally than spiritually. I love playing the piano, and I used to play the saxophone, which I still have somewhere in my storage room. My favorite foods are cheeseburgers (LTO), grilled salmon, and I enjoy some good clam chowder. I have a brother, who is 2 and a half years younger than me and I never let him forget it. My family recently bought a new home, and so I really do hope to get a TV in it. We'll have to see, though. I have friends and family all over the Eastern part of America: mostly in North Carolina, Virginia, and Maryland. It is very difficult to visit my friends in Maryland, however I go up there every so often to visit the family I have up there, and for United Synagogue Youth conventions. The colleges I most hope to go to are NC State, Appalachian State, or UNCW. More about me <a style="color:blue;text-decoration:underline;cursor:pointer;" onclick="aboutFunction();topFunction();">here</a>.</p>
	</div>
	<div onclick="schoolFunction()" class="button" alt="school"><span>School </span></div>
	<div onclick="religionFunction()" class="button" alt="religion"><span>Religion</span></div>
	<div onclick="activitiesFunction()" class="button" alt="activities"><span>Activities</span></div>
	<div onclick="marylandFunction()" class="button" alt="maryland"><span>Maryland</span></div>
	<br><br><br>
	<div id="school" style="margin: 0 10%;text-align:center;display:block;">
		<h3 style="text-align:center;"> School </h3>
		<p style="margin: -20px 0">I go to William G. Enloe High School in Raleigh, North Carolina. I have been at this school for the last 4 years, and also attended the middle school down the street, Ligon GT Magnet Middle, for 2 years. Currently, I am taking AP Literature, Foods I, German I, Astronomy Honors, AP Statistics, IB Film, Honors History Through Film, and AP European History. The 4 AP/IB classes are a lot of work, but I feel that with the level of expertise and experience that I have at this high school, I'll pull through. At this school, I am the president of Enloe Judaism Club and I play on the varsity football team. Read more about those <a style="color:blue;text-decoration:underline;cursor:pointer;" onclick="activitiesFunction()">here</a>. My sophomore and junior year I was in the Magnet Piano lab, and I have learned some really great songs, which you can check out in the 'About' tab. In the future, I aspire to be a lawyer or a stockbroker of some sort. For this, I hope to go into Sociology or business.</p>
	</div>
	<div id="religion" style="margin: 0 10%;text-align:center;display:none;">
		<h3 style="text-align:center;"> Religion </h3>
		<p style="margin: -20px 0">I go to Beth Meyer Synagogue which is a conservative synagogue in Raleigh. I do not keep kosher, as I love bacon cheeseburgers. It'd be a little conflictual. I am an active participant in the United Synagogue Youth. I am part of my chapter board at Beth Meyer, and my unofficial position is to be Regional Communications VP. On the regional level, I am on the Regional General Board for being a tri-chair for Encampment 2017. Also, at my <a style="color:blue;text-decoration:underline;cursor:pointer;" onclick="schoolFunction()">school</a>, I am the co-founder and co-president of the Enloe Judaism Club. So far, we have only been in existence for 2015-2017, but we hope to make this a long thing, passing down the club to the next most active member. My current job is working at my synagogue in the religious school. I have been there for years, and I am a teacher assistant and logistics manager. Being Jewish is a big part of my life, even if it isn't the spiritual aspect of it.</p>
	</div>
	<div id="activities" style="margin: 0 10%;text-align:center;display:none;">
		<h3 style="text-align:center;"> Activities </h3>
		<p style="margin: -20px 0">Activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities activities .</p>
	</div>
	<div id="maryland" style="margin: 0 10%;text-align:center;display:none;">
		<h3 style="text-align:center;"> Maryland </h3>
		<p style="margin: -20px 0">Maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland maryland.</p>
	</div>
</div>

<br><br><br>
<div class="disclaimer"> <br>Copyright © 2017 by Max Halbrecht Incorporated™. <br><br>This website is copyrighted by Max Halbrecht Incorporated™. No reproduction of this website should be created and sold without permission of the owner. If caught, the perpetrator would be given a felony by the Federal Bureau of Investigation, and a fine of up to $9,000,000. Please be safe and don't diminish the work of other people. Wow, look at this fake copyright text, you would think that you could actually get in trouble for looking at this website, but you actually can't. <br><br></div>
</div>
<div id="MN" style="display:none;">
	<h1 style="text-indent:1%;margin:1%;"> Max News </h1>
	<table style="margin: 1%;">
		<tr><th>Date</th><th>News</th></tr>
		<tr><td>9/15</td><td>Enloe lost their homecoming against Knightdale. Pretty unfortunate, but we'll be ready for next game.</td></tr>
	</table>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div style="width:100%;align-items:bottom;" class="disclaimer"> <br>Copyright © 2017 by Max Halbrecht Incorporated™. <br><br>This website is copyrighted by Max Halbrecht Incorporated™. No reproduction of this website should be created and sold without permission of the owner. If caught, the perpetrator would be given a felony by the Federal Bureau of Investigation, and a fine of up to $9,000,000. Please be safe and don't diminish the work of other people. Wow, look at this fake copyright text, you would think that you could actually get in trouble for looking at this website, but you actually can't. <br><br></div>
</div>
<div id="about" style="display:none">
	<div class="animate" id="animate"></div>
	<h1 style="text-align:center;margin:2.2% 0;"> About Me </h1><br><br><br><br><br>
	<div class="row" style="background-color:#ffd199;">
		<div class="columna">
			<h1>Football</h1>
			<p style="text-align:justify">As most likely noticed thus far, I am a huge Miami Dolphins fan. Since birth, my father dressed me up in little Dolphins outfits and watched the games with me. I have been to 4 games in person thus far, being on the field and meeting some of the players for each of them. In 2014, I went to Miami to the Dolphins v Vikings game, for which we won in the fourth quarter by a blocked punt for a safety. The next year, I went to the Tenessee game, where we won as well. In 2016, I went to both the San Diego game, and the Baltimore game.</p><p style="text-align:justify">In addition to watching sports, I also play for my school's varsity team. I started out this 2017 year on the team, going to conditioning and spring practice early on. Currently, I am a 2nd string wide receiver. You can read about my team's wins and loses, which I post in <a style="color:blue;text-decoration:underline;" onclick="MNFunction()">Max News</a>. I hope to continue being a huge football fanatic and to play in some recreational leagues over my future.<p>
		</div><div class="columna">
			<h1> Music </h1>
			<p style="text-align:justify">My main music taste is in Hip-hop, R&B, and Classic Rock. I enjoy some jazz here and there, but not too monumentally. If I were asked who my favorite artist would be, I would have to say Kendrick Lamar. Kendrick, in my humble opinion, is the best rapper because of his amazing lyrics. Not only this, but Kendrick has also managed to include jazz style in his albums, and has a larger hidden meaning in all of his songs. I also happen to love Billy Joel. Not exactly one of my favorite genres, but still an amazing artist for which I can play many of his pieces on piano.</p><p style="text-align:justify">On top of this, I also play piano and the saxophone. I've played the sax since 5th grade, and came to a slow halt around 9th grade, where I started an interest in piano. I would say that piano is the more superior instrument, as you can not only play more intense pieces, but also different parts at a time. I do still love both instruments and have the saxophone in my room, however.</p>
	</div>
	<div class="row">
		<div class="columnbx">
			<iframe width="100%" height="400px" src="https://www.youtube.com/embed/sPHoPzkwPgs" frameborder="0" allowfullscreen></iframe>
		</div>
		<div class="columnby">
			<h2 style="text-align:center;"> Piano </h2>
			<p style="text-align:justify;margin:2px;"> Since a young age, the piano has always been fascinating. I remember playing on the grand piano at my grandparent's house. At the time, it was just slamming on the keyboard in random motions, surprised that my pressure to the keys was producing noise. I learned how to play formally around 8th grade, and took a piano class in school sophomore and junior year. Now, I know how to play very well. However, I can't exactly sight read really hard pieces. I usually take my time on them and memorize them. The videos to the left and right are from what I know as of 2017. </p>
		</div>
		<div class="columnbx">
			<iframe width="100%" height="400px"src="https://www.youtube.com/embed/F7KB9XrwYV8" frameborder="0" allowfullscreen></iframe>
		</div>
	</div>
</div></div></div></div></div>
<div id="contact" style="display:none">
	<div style="background-color:#ffd199;border:30px solid #ffd199;"><h1 style="text-indent:1%;"> Contact Me </h1></div>
	<div class="parallax"></div>
	<div class="row" style="background-color:#99ffff;">
		<div class="columnb">
			<h2> Cell phone number: </h2>
			<p> (919) 395-1680 </p></div>
		<div class="columnb">
			<h2> My email: </h2>
			<p>maxahalbrecht@gmail.com<p></div>
		<div class="columnb">
			<h2>Skype:</h2>
			<p>miamidolfan131</p></div>
			<br><br><br><br><br><br><br><br>
		<div class="columnb">
			<h2>Instagram:</h2>
			<a href="instagram.com/maxhalbrecht"><img src="http://diysolarpanelsv.com/images/inst-clipart-12.png" style="width:100px;height:100px;"></a></div>
		<div class="columnb">
			<h2> Facebook:</h2>
			<a href="facebook.com/max.halbrecht"><img src="https://thumb.ibb.co/b64UPQ/Facebook_Logo_Transparent.png" style="width:100px;height:100px;"></a></div>
		<div class="columnb">
			<h2> LinkedIn: </h2>
			<a href="www.linkedin.com/in/max-halbrecht-501b4814b"><img src="http://psiint.com/wp-content/uploads/2017/03/linkedin-logo-copy.png" style="width:100px;height:100px;"></a></div>
	</div>
	<div style="background-color:#ffd199;border:30px solid #ffd199;"><br></div>
	<div style="width:100%;align-items:bottom;" class="disclaimer"> <br>Copyright © 2017 by Max Halbrecht Incorporated™. <br><br>This website is copyrighted by Max Halbrecht Incorporated™. No reproduction of this website should be created and sold without permission of the owner. If caught, the perpetrator would be given a felony by the Federal Bureau of Investigation, and a fine of up to $9,000,000. Please be safe and don't diminish the work of other people. Wow, look at this fake copyright text, you would think that you could actually get in trouble for looking at this website, but you actually can't. <br><br></div></div></div></div>
<script>
var a = document.getElementById("school");
var b = document.getElementById("religion");
var c = document.getElementById("activities");
var d = document.getElementById("maryland");
var home = document.getElementById("home");
var MN = document.getElementById("MN");
var contact = document.getElementById("contact");
var about = document.getElementById("about");
var homeButton = document.getElementById("homeButton");
var MNButton = document.getElementById("MNButton");
var contactButton = document.getElementById("contactButton");
var aboutButton = document.getElementById("aboutButton");
var navBar = document.getElementById("navBar");
var aboutMe = document.getElementsByClass("aboutMe");
var animate = document.getElementById("animate");

function homeFunction() {
	home.style.display = "block";
	MN.style.display = "none";
	contact.style.display = "none";
	about.style.display = "none";
	navBar.style.display = "block";
	homeButton.style.backgroundColor = "#FF8C00";
	MNButton.style.backgroundColor = "teal";
	contactButton.style.backgroundColor = "teal";
	aboutButton.style.backgroundColor = "teal";
}

function MNFunction() {
	home.style.display = "none";
	MN.style.display = "block";
	contact.style.display = "none";
	about.style.display = "none";
	navBar.style.display = "block";
	homeButton.style.backgroundColor = "teal";
	MNButton.style.backgroundColor = "#FF8C00";
	contactButton.style.backgroundColor = "teal";
	aboutButton.style.backgroundColor = "teal";
}

function contactFunction() {
	home.style.display = "none";
	MN.style.display = "none";
	contact.style.display = "block";
	about.style.display = "none";
	navBar.style.display = "block";
	homeButton.style.backgroundColor = "teal";
	MNButton.style.backgroundColor = "teal";
	contactButton.style.backgroundColor = "#FF8C00";
	aboutButton.style.backgroundColor = "teal";
}

function aboutFunction() {
	home.style.display = "none";
	MN.style.display = "none";
	contact.style.display = "none";
	about.style.display = "block";
	navBar.style.display = "block";
	homeButton.style.backgroundColor = "teal";
	MNButton.style.backgroundColor = "teal";
	contactButton.style.backgroundColor = "teal";
	aboutButton.style.backgroundColor = "#FF8C00";
}

function schoolFunction() {	
	a.style.display = "block";
	b.style.display = "none";
	c.style.display = "none";
	d.style.display = "none";
}

function religionFunction() {	
	a.style.display = "none";
	b.style.display = "block";
	c.style.display = "none";
	d.style.display = "none";
}

function activitiesFunction() {	
	a.style.display = "none";
	b.style.display = "none";
	c.style.display = "block";
	d.style.display = "none";
}

function marylandFunction() {	
	a.style.display = "none";
	b.style.display = "none";
	c.style.display = "none";
	d.style.display = "block";
}

function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>
