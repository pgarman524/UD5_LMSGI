<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Datos de Música</h1>

                <table>

                    
                    <tr bgcolor="#4F82A3" style="color: white">
                        <th>Album</th>
                        <th>Artista</th>
                        <th>Canciones</th>
                    </tr>
                    <xsl:for-each select="listaCD/cd">
                        <tr>
                            <td bgcolor="#D6EAF8">
                                <xsl:value-of select="tituloAlbum" />
                            </td>
                            <td bgcolor="#F5CBA7">
                                <xsl:value-of select="artista" />
                            </td>
                            <td bgcolor="#D6EAF8">
                                <ul>
                                    <xsl:for-each select="canciones/cancion">
                                        <xsl:if test="tiempo > 2.50">
                                            <li><xsl:value-of select="titulo" /> - <xsl:value-of select="tiempo" /></li>
                                        </xsl:if>
                                        
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
