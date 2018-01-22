<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Wed Jan 03 19:25:47 CET 2018 -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:fn="http://www.w3.org/2005/xpath-functio">
    <xsl:output method="html" indent="yes"/>
    <xsl:param name="img_id" />
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <link rel="stylesheet" type="text/css" href="css/topfive.css"/>
                <link rel="stylesheet" type="text/css" href="css/movieinfo.css"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>TOP 5 </title>
            </head>
            <body>
                <div class="header" id="header">
                    <div class="logo">
                        <a href="/xmlProjektMovie/">
                            <img src="../img/logo.png" alt="logo"/>
                        </a>
                    </div>
                    <div class="titel_header">
                        <h1>Movie Information</h1>
                    </div>
                </div>
                <div class="info_block">
                    <xsl:for-each select="//movie[@id=$img_id]">
                        <img id="movieinfo_img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="./image/ImageLocation"/>
                            </xsl:attribute>
                        </img>
                        <div class="rating_block">
                            <p id="rating_text">
                                <xsl:value-of select="./rating"/>
                            </p>
                        </div>
                        <div class="info">
                            <h2>
                                <xsl:value-of select="./title"/>
                            </h2>
                            <table border="1">
                                <tr>
                                    <td>Genre: </td>
                                    <td>
                                        <xsl:value-of select="./genres"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Directors: </td>
                                    <td>
                                        <xsl:value-of select="./directors"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Countries: </td>
                                    <td>
                                        <xsl:value-of select="./countries"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Year: </td>
                                    <td>
                                        <xsl:value-of select="./year"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Actors: </td>
                                    <td>
                                        <xsl:value-of select="./actors"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Plot: </td>
                                    <td>
                                        <xsl:value-of select="./plot"/>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
