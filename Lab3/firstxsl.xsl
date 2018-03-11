<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
  <style>
body {text-align: center;background: #000000;}
#main {
background-repeat:no-repeat;
background-position:right center;
background-image: url("../images/face.jpg");
width: 90%;
display: inline-block;
min-height: 900px;
}

.input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}

#headx {
color: #ffffff;
font-size: 50px;
padding: 2%;	

width: 70%;
display: inline-block;
border-radius: 8px;
}

#buttonhold {
color: #FFFFFF;
font-size: 50px;
padding: 12px;	
background-color: rgba(255, 0, 0, 0.3);
width: 70%;
display: inline-block;
border-radius: 8px;
}

.pars {
color: #FFFFFF;
font-size: 30px;
padding: 2px;	
background-color: rgba(000, 0, 0, 0.7);
width: 70%;
display: inline-block;
}

.norm {
color: #FFFFFF;
font-size: 16px;
padding: 12px;	
background-color: rgba(000, 0, 0, 0.7);
width: 70%;
display: inline-block;
}

.alertx {
color: #FFFFFF;
font-size: 22px;
width: 70%;
display: inline-block;
}

.button {
    background-color: #ffffff;
    border: none;
    color: #555;
    padding: 5px 12px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
	border-radius: 8px;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.bits{
color:#000000; width:45%; float:left; box-shadow: 10px 10px 5px #888888; border-radius: 8px; background-color: rgba(255, 255, 255, 0.7);; margin-bottom:5px;  margin-right:5px;
}

.pieces {
text-align:center; font-size:24px;
}

.tops {color:#ff0000; width:45%; border: solid 2px white; float:left; border-radius: 8px; margin-right:5px; margin-bottom:10px;}

</style>
  </head>
  
  
  <body>
  
  <div id="main">
    <h2 id="headx">My First Transform</h2>
	<div style="color:#000000; width:90%; margin-left:auto; margin-right:auto; text-align:center;">
		<div class="tops"><p class="pars">Who</p></div>
		<div class="tops"><p class="pars">Position</p></div>
	
	
	<xsl:for-each select="/college/person">
		   
	   <div class="bits">
	   <p class="pieces">The Person named <span style="color:#ff0000"><xsl:value-of select="name"/></span>
	   is <xsl:value-of select="age"/>
	   They come to the college every day.
	   </p></div>
	   <div class="bits">
	   <p class="pieces"><span style="color:#ff0000"><xsl:value-of select="name"/></span>
	   is <xsl:value-of select="age"/>
	   a <xsl:value-of select="position"/>
	   </p></div>
		
		</xsl:for-each>
	</div>
	<div style="width:100%; float:left; background: #ffffff; margin-top:10px;">
	<h3 align="center">With a simple bit of XSLT documents can be fully transformed</h3>
   </div>
   
   </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>