<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

  <html>
  <head>
  <style>
  table {border : 2px dashed}
  th {background-color : gray}

  tr:nth-child(even) {background: white}
  tr:nth-child(odd) {background: lightblue}
  img {width : 150px; height : 100px}
  #main, h2 {
  padding-top: 25px;
  padding-right: 30px;
  padding-bottom: 25px;
  padding-left: 80px;
  font-family : Arial;
  font-size : 20pt;
  }
  </style>
  </head>
  <body>
  <h2>Lui's Loaves</h2>

    <xsl:for-each select="loaves/loaf">
	<div id="main">
	<img>
		<xsl:attribute name="src">
         <xsl:value-of select="gif"/>
		</xsl:attribute>
     </img>
	 <div>
	 <b> <xsl:value-of select="@type" /> : </b>
	 
      <xsl:value-of select="price"/>
     </div>

     <div>	  
      <xsl:value-of select="description"/>
     </div>
	 
	 </div>
    </xsl:for-each>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>