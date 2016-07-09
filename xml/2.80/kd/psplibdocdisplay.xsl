<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <html><head><title>PSPLIBDOC XML Viewer</title></head><body>
    
   <TABLE STYLE="border:0px solid black; width=100%">
      <TR STYLE="font-size:10pt; font-family:Verdana; font-weight:bold; text-decoration:underline">
        <TD>Filename</TD>
        <TD>PRX Name</TD>
      </TR>
      <xsl:for-each select="PSPLIBDOC/PRXFILES/PRXFILE">
        <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
          <TD STYLE="background-color:lightgrey"><xsl:value-of select="PRX"/></TD>
          <TD STYLE="background-color:lightgrey"><A><xsl:attribute name="id"><xsl:value-of select="PRXNAME"/></xsl:attribute><xsl:value-of select="PRXNAME"/></A></TD>
        </TR>
	  <xsl:for-each select="LIBRARIES/LIBRARY">
	    <BR></BR>
	    <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
            <TD><B>Library Name: <xsl:value-of select="NAME"/></B></TD>
          </TR>      
          <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
            <TD><B>Functions</B></TD>
            <TD></TD>            
          </TR>  
          <TR></TR> <TR></TR>   
		  <xsl:for-each select="FUNCTIONS/FUNCTION">
                <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
                  <TD><xsl:value-of select="NID"/></TD>
			<TD><xsl:value-of select="NAME"/></TD>			
                </TR>      
              </xsl:for-each>
              <TR></TR> <TR></TR>       
              <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
                <TD><B>Variables</B></TD>                
              </TR>  
              <TR></TR> <TR></TR>       
		  <xsl:for-each select="VARIABLES/VARIABLE">
		    <TR STYLE="font-family:Verdana; font-size:10pt; padding:5px 6px">
                  <TD><xsl:value-of select="NID"/></TD>
			<TD><xsl:value-of select="NAME"/></TD>			
                </TR>      
              </xsl:for-each>
           </xsl:for-each>
      </xsl:for-each>
    </TABLE>
   </body></html> 
  </xsl:template>
</xsl:stylesheet>
