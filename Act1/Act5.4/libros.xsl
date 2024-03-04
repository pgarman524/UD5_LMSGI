<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi blioteca</h1>

                <table>
                    <tr bgcolor="#887788">
                        <th>ISB</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <td bgcolor="#F5CBA7">
                                <xsl:value-of select="ISB" />
                            </td>
                            <td bgcolor="#D6EAF8">
                                <xsl:value-of select="titulo" />
                            </td>
                            <td bgcolor="#F5CBA7">
                                <xsl:value-of select="autor" />
                            </td>
                            <xsl:choose>

                                <xsl:when test="precio &gt; 25">
                                    <td bgcolor="#E74C3C">
                                        <xsl:value-of select="precio" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="#27AE60">
                                        <xsl:value-of select="precio" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>

                        </tr>

                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>