<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/document">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title><xsl:value-of select="titre"/></title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="titre"/>
                    - Prénom NOM, né(e) le jj/mm/aaaa
                </h1>

                <p class="infos">
                    Cote : <xsl:value-of select="@cote"/>
                    - Année : <xsl:value-of select="annee"/>
                    - Prix : <xsl:value-of select="prix"/> FCFA
                </p>

                <h2>Auteurs</h2>
                <ul>
                    <xsl:for-each select="auteur">
                        <xsl:sort select="."/>
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>

                <p class="etat">
                    État :
                    <xsl:choose>
                        <xsl:when test="@disponible='true'">Disponible</xsl:when>
                        <xsl:otherwise>Indisponible</xsl:otherwise>
                    </xsl:choose>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
