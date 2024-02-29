<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi blioteca</h1>
    
    <table>
        <tr bgcolor="#887788">
            <th>Título</th>
            <th>Autor</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <xsl:if test="precio &gt;10">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
        </tr>
    </xsl:if>
    </xsl:for-each>

    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
