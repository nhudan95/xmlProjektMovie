<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Mon Jan 15 13:34:05 CET 2018 -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:fn="http://www.w3.org/2005/xpath-functions" 
    xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" 
    xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="xs xdt err fn">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="text"/>
    <xsl:param name="search_type"/>
    <xsl:template match="/">
        <html>
            <title>All Movies </title>
            <head>
                <link rel="stylesheet" type="text/css" href="css/allmovies.css"/>
            </head>
            <body>
                <div class="header" id="header">
                    <div class="logo">
                        <a href="/xmlProjektMovie/">
                            <img src="../img/logo.png" alt="logo"/>
                        </a>
                    </div>
                    <div class="titel_header">
                        <h1>ALL MOVIES</h1>
                    </div>
                </div>
                <br/>
                <div id="abc">
                    <a class="first" href="#">A</a>
                    <a href="#b">B</a>
                    <a href="#c">C</a>
                    <a href="#d">D</a>
                    <a href="#e">E</a>
                    <a href="#f">F</a>
                    <a href="#g">G</a>
                    <a href="#h">H</a>
                    <a href="#i">I</a>
                    <a href="#j">J</a>
                    <a href="#k">K</a>
                    <a href="#l">L</a>
                    <a href="#m">M</a>
                    <a href="#n">N</a>
                    <a href="#o">O</a>
                    <a href="#p">P</a>
                    <a href="#q">Q</a>
                    <a href="#r">R</a>
                    <a href="#s">S</a>
                    <a href="#t">T</a>
                    <a href="#u">U</a>
                    <a href="#v">V</a>
                    <a href="#w">W</a>
                    <a href="#x">X</a>
                    <a href="#y">Y</a>
                    <a class="last" href="#z">Z</a>
                </div>
                <div class="block">
                    <p id="a">A</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='A'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="b">B</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='B'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="c">C</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='C'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="d">D</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='D'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="e">E</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='E'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="f">F</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='F'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="g">G</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='G'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="h">H</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='H'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="i">I</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='I'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="j">J</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='J'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="k">K</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='K'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="l">L</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='L'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="m">M</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='M'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="n">N</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='N'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="o">O</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='O'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="p">P</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='P'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="q">Q</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='Q'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="r">R</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='R'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="s">S</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='S'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="t">T</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='T'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="u">U</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='U'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="v">V</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='V'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="w">W</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='W'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="x">X</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='X'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="y">Y</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='Y'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="block">
                    <p id="z">Z</p>
                    <div class="grid">
                        <xsl:for-each select="//movie/title">
                            <xsl:sort select="."></xsl:sort>
                            <xsl:variable name="title">
                                <xsl:value-of select="."></xsl:value-of>
                            </xsl:variable>
                            <xsl:variable name="img_id">
                                <xsl:value-of select="../@id"></xsl:value-of>
                            </xsl:variable>
                            <xsl:if test="substring(./text(),1,1)='Z'">
                                <form action="movieinfo.html" method="get">
                                    <button type="submit" name="img_id" value="{$img_id}">
                                        <img id="allM_imgA" title="{$title}">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="../image/ImageLocation"/>
                                            </xsl:attribute>
                                        </img>
                                    </button>
                                </form>
                                <!--<xsl:value-of select="."/>-->
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </div>
                <div class="up_div">
                    <a href="#header">
                        <img id="up" src="../img/up.png"/>
                    </a>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>