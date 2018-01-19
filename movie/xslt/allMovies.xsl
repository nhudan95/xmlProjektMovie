<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Wed Jan 03 19:25:47 CET 2018 -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:fn="http://www.w3.org/2005/xpath-functio">
    <xsl:output method="html" indent="yes"/>
    <xsl:param name="abc" />
    <xsl:template match="/">
        <html>
            <title>All Movies </title>
            <head>
                <link rel="stylesheet" type="text/css" href="movie_css.css"/>
            </head>
            <body>
                <h1>Alle Movies</h1>
                <div class="alphabet">
                    <a class="first" href="#">A</a>
                    <a href="#">B</a>
                    <a href="#">C</a>
                    <a href="#">D</a>
                    <a href="#">E</a>
                    <a href="#">F</a>
                    <a href="#">G</a>
                    <a href="#">H</a>
                    <a href="#">I</a>
                    <a href="#">J</a>
                    <a href="#">K</a>
                    <a href="#">L</a>
                    <a href="#">M</a>
                    <a href="#">N</a>
                    <a href="#">O</a>
                    <a href="#">P</a>
                    <a href="#">Q</a>
                    <a href="#">R</a>
                    <a href="#">S</a>
                    <a href="#">T</a>
                    <a href="#">U</a>
                    <a href="#">V</a>
                    <a href="#">W</a>
                    <a href="#">X</a>
                    <a href="#">Y</a>
                    <a class="last" href="#">Z</a>
                </div>
                <br></br>
                <xsl:for-each select="//movie/title">
                    <xsl:sort select="."></xsl:sort>
                    <br>
                        <img align= "center" height="100">
                            <xsl:attribute name="src">
                                <xsl:value-of select="../image/ImageLocation"/>
                            </xsl:attribute>
                        </img>  |                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                        <xsl:value-of select="."/>
                    </br>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
