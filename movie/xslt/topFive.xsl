<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Wed Jan 03 19:25:47 CET 2018 -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:fn="http://www.w3.org/2005/xpath-functio">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <link rel="stylesheet" type="text/css" href="css/movie_css.css"/>
                <link rel="stylesheet" type="text/css" href="css/topfive.css"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>TOP 5 </title>
            </head>
            <body>
                <div class="navigation">
                    <div class="logo">
                        <a href="/xmlProjektMovie/">
                            <img src="img/logo.png" alt="logo"/>
                        </a>
                    </div>
                </div>
                <h1>TOP 5</h1>
                <xsl:for-each select="//movie[rating>=7.0]/title">
                    <xsl:if test="position() &lt;= 5">
                        <xsl:copy-of select="."/>
                        <br>
                            <img align= "center" height="100">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="../image/ImageLocation"/>
                                </xsl:attribute>
                            </img>  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                            <xsl:value-of select="."/>      | rating:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                            <xsl:value-of select="../rating"/>
                        </br>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
