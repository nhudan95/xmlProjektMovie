<?xml version="1.0" encoding="UTF-8" ?>

<!-- New document created with EditiX at Wed Jan 10 20:16:36 CET 2018 -->

<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/xpath-datatypes"
	xmlns:err="http://www.w3.org/2005/xqt-errors"
	exclude-result-prefixes="xs xdt err fn">

	<xsl:output method="html" indent="yes"/>
	
	<xsl:template match="/">
	
<html>

<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="document.css" />
	<title>Kontrollaufgabe 3</title>
</head>

<body>
	<h1 align="center"><img src="images/cocoon.gif" height="20px" /> -Studentenverwaltung</h1>
	<div name="navigation" style="width: 250px;  float: left; padding: 10px;">
		<table border="1">
			<tr>
				<th colspan="2" class="nav">Quantitative Angaben</th>
			</tr>
			<tr>
				<td>Quantitative Angaben</td>
				<td><a href="studentenverwaltung/quantitativeAngabe.html" target="ausgabe">quantitativeAngabe.html</a></td>

			</tr>
			<th>
				<form action="studentenverwaltung/studiengaenge.html" target="ausgabe" method="get">
					<select name="struktureinheit" id="struktureinheit">
							<option value="" disabled="disabled" selected="selected">Waehle eine Struktureinheit aus</option>
							<option value="1">Fakultaet 1 - Wirtschaftswissenschaften</option>
							<option value="2">Fakultaet 2 - Architektur, Bau und Umwelt</option>
							<option value="3">Fakultaet 3 - Gesellschaftswissenschaften</option>
							<option value="4">Fakultaet 4 - Elektrotechnik und Informatik</option>
							<option value="5">Fakultaet 5 - Natur und Technik</option>
						</select>
					<input type="submit" value="Submit" />
				</form>
			</th>
			

			<tr>
				<th colspan="2" class="nav">Qualitative Angaben</th>
			</tr>

			<tr>
				<td>Tabellarische Darstellung der Angaben ueber alle Studiengaenge</td>
				<td><a href="studiengaenge.html" target="ausgabe">studiengaenge.html</a></td>

			</tr>
			<tr>
				<td>Tabellarische Darstellung der Angaben ueber alle Bachelor- oder Master-Studiengaenge</td>
				<td><a href="bachelorMaster.html" target="ausgabe">bachloreMaster.html</a></td>
			</tr>

		</table>
	</div>
	<div style="float: left; margin-left:20%; padding: 10px;">
		<iframe name="ausgabe" width="800px" height="820px" style="border:1; border-collapse: collapse;">
			Ausgaben
		</iframe>
	</div>
</body>

</html>
	</xsl:template>

</xsl:stylesheet>
