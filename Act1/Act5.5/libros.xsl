<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                <table>
                    <tr bgcolor="#7FB3D5">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Número de páginas</th>
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
                            <td bgcolor="#D6EAF8">
                                <xsl:value-of select="precio" />
                            </td>
                            <td bgcolor="#F5CBA7">
                                <xsl:apply-templates select="numPaginas" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="numPaginas[. > 150]">
        <span style="color:red;">
            <xsl:value-of select="." />
        </span>
    </xsl:template>

    <xsl:template match="numPaginas">
        <xsl:value-of select="." />
    </xsl:template>
</xsl:stylesheet>