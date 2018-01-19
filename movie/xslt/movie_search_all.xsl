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
				<link rel="stylesheet" type="text/css" href="css/movie_search.css"/>
				<meta name="viewport" content="width=device-width, initial-scale=1"/>
				<link href="https://fonts.googleapis.com/css?family=Lato|Oswald|Raleway" rel="stylesheet"/>
			</head>
			<body>
				<div class="header">
					<div class="logo">
						<a href="/xmlProjektMovie/">
							<img src="../img/logo.png" alt="logo"/>
						</a>
					</div>
					<div class="titel_header">
						<h1>[
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																												
							<xsl:value-of select="$text"/> ]																																																																																																																																																																																																																																																																																																																																																																																																																																																			
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
			</body>
		</html>
	</xsl:template>
	<xsl:template name="search_all">
		<xsl:for-each select="//movie[title=$text or ./directors/director=$text or ./countries/country=$text or ./actors/actor=$text]">
			<div class="img">
				<a href="infomovie.html">
					<img class="search_img">
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="beschreibung">
				<div id="rating">
					<h2>
						<xsl:value-of select="./rating"/>
					</h2>
				</div>
				<br/>
				<table>
					<tr>
						<td colspan="2">
							GENRES:
						</td>
						<td>
							<xsl:for-each select="./genres/genre">
								<xsl:value-of select="."/> |
																																																																																				
							</xsl:for-each>
						</td>
						<tr>
							<td>Directors </td>
							<td>
								<xsl:value-of select="./directors"/>
							</td>
						</tr>
						<tr>
							<td>Countries </td>
							<td>
								<xsl:value-of select="./countries"/>
							</td>
						</tr>
						<tr>
							<td>Year </td>
							<td>
								<xsl:value-of select="./year"/>
							</td>
						</tr>
						<tr>
							<td>Actors </td>
							<td>
								<xsl:value-of select="./actors"/>
							</td>
						</tr>
					</tr>
				</table>
			</div>
			<!--<table border="1"><tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr><tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr><tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr><tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr><tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr><tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr><tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr></table>-->
			<br/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_title">
		<xsl:for-each select="//movie[title=$text]">
			<table border="1">
				<tr>
					<td>Title </td>
					<td>
						<xsl:value-of select="./title"/>
					</td>
				</tr>
				<tr>
					<td>Genre </td>
					<td>
						<xsl:value-of select="./genres"/>
					</td>
				</tr>
				<tr>
					<td>Directors </td>
					<td>
						<xsl:value-of select="./directors"/>
					</td>
				</tr>
				<tr>
					<td>Countries </td>
					<td>
						<xsl:value-of select="./countries"/>
					</td>
				</tr>
				<tr>
					<td>Year </td>
					<td>
						<xsl:value-of select="./year"/>
					</td>
				</tr>
				<tr>
					<td>Actors </td>
					<td>
						<xsl:value-of select="./actors"/>
					</td>
				</tr>
				<tr>
					<td>Rating </td>
					<td>
						<xsl:value-of select="./rating"/>
					</td>
				</tr>
				<tr>
					<td>Plot </td>
					<td>
						<xsl:value-of select="./plot"/>
					</td>
				</tr>
				<td>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</td>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_actor">
		<xsl:for-each select="//movie[./actors/actor=$text]">
			<table border="1">
				<tr>
					<td>Title </td>
					<td>
						<xsl:value-of select="./title"/>
					</td>
				</tr>
				<tr>
					<td>Genre </td>
					<td>
						<xsl:value-of select="./genres"/>
					</td>
				</tr>
				<tr>
					<td>Directors </td>
					<td>
						<xsl:value-of select="./directors"/>
					</td>
				</tr>
				<tr>
					<td>Countries </td>
					<td>
						<xsl:value-of select="./countries"/>
					</td>
				</tr>
				<tr>
					<td>Year </td>
					<td>
						<xsl:value-of select="./year"/>
					</td>
				</tr>
				<tr>
					<td>Actors </td>
					<td>
						<xsl:value-of select="./actors"/>
					</td>
				</tr>
				<tr>
					<td>Rating </td>
					<td>
						<xsl:value-of select="./rating"/>
					</td>
				</tr>
				<tr>
					<td>Plot </td>
					<td>
						<xsl:value-of select="./plot"/>
					</td>
				</tr>
				<td>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</td>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_director">
		<xsl:for-each select="//movie[./directors/director=$text]">
			<table border="1">
				<tr>
					<td>Title </td>
					<td>
						<xsl:value-of select="./title"/>
					</td>
				</tr>
				<tr>
					<td>Genre </td>
					<td>
						<xsl:value-of select="./genres"/>
					</td>
				</tr>
				<tr>
					<td>Directors </td>
					<td>
						<xsl:value-of select="./directors"/>
					</td>
				</tr>
				<tr>
					<td>Countries </td>
					<td>
						<xsl:value-of select="./countries"/>
					</td>
				</tr>
				<tr>
					<td>Year </td>
					<td>
						<xsl:value-of select="./year"/>
					</td>
				</tr>
				<tr>
					<td>Actors </td>
					<td>
						<xsl:value-of select="./actors"/>
					</td>
				</tr>
				<tr>
					<td>Rating </td>
					<td>
						<xsl:value-of select="./rating"/>
					</td>
				</tr>
				<tr>
					<td>Plot </td>
					<td>
						<xsl:value-of select="./plot"/>
					</td>
				</tr>
				<td>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</td>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_country">
		<xsl:for-each select="//movie[./countries/country=$text]">
			<table border="1">
				<tr>
					<td>Title </td>
					<td>
						<xsl:value-of select="./title"/>
					</td>
				</tr>
				<tr>
					<td>Genre </td>
					<td>
						<xsl:value-of select="./genres"/>
					</td>
				</tr>
				<tr>
					<td>Directors </td>
					<td>
						<xsl:value-of select="./directors"/>
					</td>
				</tr>
				<tr>
					<td>Countries </td>
					<td>
						<xsl:value-of select="./countries"/>
					</td>
				</tr>
				<tr>
					<td>Year </td>
					<td>
						<xsl:value-of select="./year"/>
					</td>
				</tr>
				<tr>
					<td>Actors </td>
					<td>
						<xsl:value-of select="./actors"/>
					</td>
				</tr>
				<tr>
					<td>Rating </td>
					<td>
						<xsl:value-of select="./rating"/>
					</td>
				</tr>
				<tr>
					<td>Plot </td>
					<td>
						<xsl:value-of select="./plot"/>
					</td>
				</tr>
				<td>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</td>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_genre">
		<xsl:for-each select="//movie[./genres/genre=$search_genre]">
			<table border="1">
				<tr>
					<td>Title </td>
					<td>
						<xsl:value-of select="./title"/>
					</td>
				</tr>
				<tr>
					<td>Genre </td>
					<td>
						<xsl:value-of select="./genres"/>
					</td>
				</tr>
				<tr>
					<td>Directors </td>
					<td>
						<xsl:value-of select="./directors"/>
					</td>
				</tr>
				<tr>
					<td>Countries </td>
					<td>
						<xsl:value-of select="./countries"/>
					</td>
				</tr>
				<tr>
					<td>Year </td>
					<td>
						<xsl:value-of select="./year"/>
					</td>
				</tr>
				<tr>
					<td>Actors </td>
					<td>
						<xsl:value-of select="./actors"/>
					</td>
				</tr>
				<tr>
					<td>Rating </td>
					<td>
						<xsl:value-of select="./rating"/>
					</td>
				</tr>
				<tr>
					<td>Plot </td>
					<td>
						<xsl:value-of select="./plot"/>
					</td>
				</tr>
				<td>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="./image/ImageLocation"/>
						</xsl:attribute>
					</img>
				</td>
			</table>
			<br/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
