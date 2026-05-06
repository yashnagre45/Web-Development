<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<h2>Result</h2>

<xsl:for-each select="students/student">
<p>
Name: <xsl:value-of select="name"/><br/>
Marks: <xsl:value-of select="marks"/><br/>

Result:
<xsl:if test="marks &gt;= 75">
Pass with Distinction
</xsl:if>
<xsl:if test="marks &lt; 75">
Pass
</xsl:if>

</p>
</xsl:for-each>

</body>
</html>

</xsl:template>

</xsl:stylesheet>