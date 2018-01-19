<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Mon Jan 15 13:34:05 CET 2018 -->
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions" 
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" 
	xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="xs xdt err fn">
	<xsl:output method="xml" indent="yes"/>
	<xsl:param name="nachname"/>
	<xsl:template match="/">
		<html>
			<head>
				<!--<link rel="stylesheet" type="text/css" href="studentenverwaltung_css.css"/>
-->
			</head>
			<body>
				<h1>Movies search result</h1>
				<!-- if cases: $search == all or title or actor or director or country -->
				<xsl:call-template name="search_all"/>
					
				
			</body>
		</html>
	</xsl:template>
	<xsl:template name="search_all">
		<xsl:for-each select="//movie[title=$text or ./directors/director=$text or ./countries/country=$text or ./actors/actor=$text]">
						<table border="1">
						
							<tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr>						
							
							<tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr>	
														
							<tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr>	
							
							<tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr>	
								
							<tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr>	
								
							<tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr>
								
							<tr><td>Rating </td><td><xsl:value-of select="./rating"/></td></tr>
								
							<tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr>
						
						<td><xsl:value-of select="./image"/>
						</td>

						</table>
						<br/>
					</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_title">
		<xsl:for-each select="//movie[title=$text]">
						<table border="1">
						
							<tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr>						
							
							<tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr>	
														
							<tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr>	
							
							<tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr>	
								
							<tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr>	
								
							<tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr>
								
							<tr><td>Rating </td><td><xsl:value-of select="./rating"/></td></tr>
								
							<tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr>
						
						<td><xsl:value-of select="./image"/>
						</td>

						</table>
						<br/>
					</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_actor">
		<xsl:for-each select="//movie[./actors/actor=$text]">
						<table border="1">
						
							<tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr>						
							
							<tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr>	
														
							<tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr>	
							
							<tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr>	
								
							<tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr>	
								
							<tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr>
								
							<tr><td>Rating </td><td><xsl:value-of select="./rating"/></td></tr>
								
							<tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr>
						
						<td><xsl:value-of select="./image"/>
						</td>

						</table>
						<br/>
					</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_director">
		<xsl:for-each select="//movie[./directors/director=$text]">
						<table border="1">
						
							<tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr>						
							
							<tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr>	
														
							<tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr>	
							
							<tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr>	
								
							<tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr>	
								
							<tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr>
								
							<tr><td>Rating </td><td><xsl:value-of select="./rating"/></td></tr>
								
							<tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr>
						
						<td><xsl:value-of select="./image"/>
						</td>

						</table>
						<br/>
					</xsl:for-each>
	</xsl:template>
	<xsl:template name="search_genre">
		<xsl:for-each select="//movie[./genres/genre=$text]">
						<table border="1">
						
							<tr><td>Title </td><td><xsl:value-of select="./title"/></td></tr>						
							
							<tr><td>Genre </td><td><xsl:value-of select="./genres"/></td></tr>	
														
							<tr><td>Directors </td><td><xsl:value-of select="./directors"/></td></tr>	
							
							<tr><td>Countries </td><td><xsl:value-of select="./countries"/></td></tr>	
								
							<tr><td>Year </td><td><xsl:value-of select="./year"/></td></tr>	
								
							<tr><td>Actors </td><td><xsl:value-of select="./actors"/></td></tr>
								
							<tr><td>Rating </td><td><xsl:value-of select="./rating"/></td></tr>
								
							<tr><td>Plot </td><td><xsl:value-of select="./plot"/></td></tr>
						
						<td><xsl:value-of select="./image"/>
						</td>

						</table>
						<br/>
					</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
