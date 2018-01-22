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
	<xsl:param name="search_genre" />
	<xsl:template match="/">
		<html>
			<head>
				<title>Search Movie</title>
				<link rel="stylesheet" type="text/css" href="css/allmovies.css"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link href="https://fonts.googleapis.com/css?family=Lato|Oswald|Raleway" rel="stylesheet"/>
			</head>
			<body>
				<div class="header" id="header">
					<div class="logo">
						<a href="/xmlProjektMovie/">
							<img src="../img/logo.png" alt="logo"/>
						</a>
					</div>
					<div class="titel_header">
						<h1>[
																																			
							<xsl:choose>
								<xsl:when test="$search_genre=''">
									<xsl:value-of select="$text"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$search_genre"/>
								</xsl:otherwise>
							</xsl:choose>
							]
																														
						</h1>
					</div>
				</div>
				<xsl:call-template name="search_genre"/>
				<!-- if cases: $search == all or title or actor or director or country -->
				<xsl:if test="$search_type='All'">
					<xsl:call-template name="search_all"/>
				</xsl:if>
				<xsl:if test="$search_type='Actor'">
					<xsl:call-template name="search_actor"/>
				</xsl:if>
				<xsl:if test="$search_type='Director'">
					<xsl:call-template name="search_director"/>
				</xsl:if>
				<xsl:if test="$search_type='Title'">
					<xsl:call-template name="search_title"/>
				</xsl:if>
				<xsl:if test="$search_type='Country'">
					<xsl:call-template name="search_country"/>
				</xsl:if>
				<div class="up_div">
					<a href="#header">
						<img id="up" src="../img/up.png"/>
					</a>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="search_all">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[lower-case(title)[contains(., lower-case($text))] or ./directors/director[contains(., $text)] or ./countries/country[contains(., $text)] or ./actors/actor[contains(., $text)]]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" title="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="search_title">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[lower-case(title)[contains(., lower-case($text))]]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" titel="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="search_actor">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[actors/actor[contains(., $text)]]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" title="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="search_director">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[./directors/director[contains(., $text)]]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" title="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="search_country">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[./countries/country[contains(., $text)]]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" title="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="search_genre">
		<div class="block">
			<div class="grid">
				<xsl:for-each select="//movie[./genres/genre=$search_genre]">
					<xsl:variable name="title">
						<xsl:value-of select="./title"></xsl:value-of>
					</xsl:variable>
					<xsl:variable name="img_id">
						<xsl:value-of select="./@id"></xsl:value-of>
					</xsl:variable>
					<form action="movieinfo.html" method="get">
						<button type="submit" name="img_id" value="{$img_id}">
							<img id="allM_imgA" title="{$title}">
								<xsl:attribute name="src">
									<xsl:value-of select="./image/ImageLocation"/>
								</xsl:attribute>
							</img>
						</button>
					</form>
				</xsl:for-each>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
