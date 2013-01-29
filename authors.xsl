<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="#all"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Jul 23, 2011</xd:p>
            <xd:p><xd:b>Author:</xd:b> jakob</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
     <xsl:template match="author">
        <xsl:variable name="author" select="fn:lower-case(.)"/>
         <author>
             <xsl:choose>
                 <xsl:when test="$author='meurillon_l'">Lancelot</xsl:when>
                 <xsl:when test="$author='daniel_la'">Laurent</xsl:when>
                 <xsl:when test="$author='avenet_s'">Sebastien</xsl:when>
                 <xsl:when test="$author='lerat_t'">Teddy</xsl:when>
                 <xsl:when test="$author='fix_j' or $author='jakob'">Jakob</xsl:when>
                 <xsl:when test="$author='couronne_r'">Romuald</xsl:when>
                 <xsl:when test="$author='villepreux_c' or $author='charles'">Charles</xsl:when>
                 <xsl:when test="$author='brunet_l' or $author='ext-brunet_l'">Laurent (info3)</xsl:when>
                 <xsl:when test="$author='henry_p'">Pascal (info3)</xsl:when>
                 <xsl:when test="$author='tromboni_c' or $author='claudia'">Claudia</xsl:when>
                 <xsl:when test="$author='mohamed'">Mohamed</xsl:when>
                 <xsl:when test="$author='pierre' or $author='attar_p'">Pierre</xsl:when>
                 <xsl:when test="$author='bruno' or $author='chatel_b' or $author='bchatel'">Bruno</xsl:when>

                 <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
             </xsl:choose>
         </author>
    </xsl:template>     
</xsl:stylesheet>