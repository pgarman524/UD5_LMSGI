<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" />

    
    <xsl:template match="/">
        <html>
            <head> <!-- Aquí van los estilos-->
                <title>Notas de Alumnos</title>
                <style type="text/css">
                    body { font-family: Arial black, sans-serif; } <!-- Podemos usar destintas fuentes-->
                    .tabla-contenidos { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }
                    .sobresaliente { color: #336BFF; } <!-- Colocar color de ansii, ta,mbién vale blue, red, light blue... -->
                    .notable { color: #19A3E2; }
                    .bien { color: black; }
                    .suficiente { color: orange; }
                    .suspenso { color: red; }
                </style>
            </head>
            <body>
                <div class="tabla-contenidos">
                    <table border="1">
                  
                        <thead>
                            <tr>
                                <th colspan="3">Datos</th> <!-- El N de columnas y el nombre de la cabecera de cada columna-->
                                <th colspan="3">Notas</th>
                            </tr>
                            <tr>
                                <th>Nombre</th> <!-- Cada dato que queremos mostrar en cada pequeña celda-->
                                <th>Apellidos</th>
                                <th>Cuestionarios</th>
                                <th>Tareas</th>
                                <th>Examen</th>
                                <th>Final</th>
                            </tr>
                        </thead>
                
                        <tbody>
                            <xsl:apply-templates select="notas/alumno[@convocatoria='Junio']" /> <!-- Solo recogemos los alumnos que tengan el atributo convocatoria y dato junio-->
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre" /></td>
            <td><xsl:value-of select="apellidos" /></td>
            <td><xsl:value-of select="cuestionarios" /></td>
            <td><xsl:value-of select="tareas" /></td>
            <td><xsl:value-of select="examen" /></td>
            <td>
                <xsl:choose>
                    <xsl:when test="final >= 9">
                        <span class="sobresaliente">Sobresaliente</span>    <!-- Seleccionamos los estilos de la parte superior-->
                    </xsl:when>
                    <xsl:when test="final >= 7">
                        <span class="notable">Notable</span>
                    </xsl:when>
                    <xsl:when test="final >= 6">
                        <span class="bien">Bien</span>
                    </xsl:when>
                    <xsl:when test="final >= 5">
                        <span class="suficiente">Suficiente</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="suspenso">Suspenso</span>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>


    <xsl:template match="matricula" /> <!-- Plantilla vacía-->

</xsl:stylesheet>