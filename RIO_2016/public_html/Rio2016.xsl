<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Rio2016.xsl
    Created on : 12 septembre 2019, 16:29
    Author     : aliger
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Rio2016.xsl</title>
                <link href="Rio2016.css" type="text/css" rel="stylesheet" />
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tableau">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="ligne">
        <table>
            <th>Pays</th>
            <th>Or</th>
            <th>Argent</th>
            <th>Bronze</th>
        </table>
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="pays">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="medaille">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="medaille">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="medaille">
        <xsl:apply-templates />
    </xsl:template>

</xsl:stylesheet>