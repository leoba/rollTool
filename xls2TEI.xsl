<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output indent="yes"/>
    <xsl:template match="root">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="table">
        <?oasis-schema href="http://tapor.uvic.ca/~mholmes/image_markup/schemas/imt_1_8.rng" type="application/xml"?>
        <?oxygen RNGSchema="http://tapor.uvic.ca/~mholmes/image_markup/schemas/imt_1_8.rng" type="xml"?>
        <TEI xmlns="http://www.tei-c.org/ns/1.0" version="5.0" xml:id="IMT">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Penn MS Roll 1066 - IMT</title>
                    </titleStmt>

                    <publicationStmt>
                        <p>Schoenberg Institute for Manuscript Studies</p>
                    </publicationStmt>
                    <sourceDesc>
                        <p>1000 x 2870</p>
                    </sourceDesc>
                </fileDesc>
                <encodingDesc>
                    <tagsDecl xml:id="imtAnnotationCategories">
                        <rendition xml:id="Text">
                            <desc>transcriptional</desc>
                            <label>Text</label>
                            <code rend="rectangle" lang="text/css">color: #ff0000</code>
                        </rendition>
                        <rendition xml:id="MarginalNote">
                            <desc>transcriptional</desc>
                            <label>Marginal Note</label>
                            <code rend="rectangle" lang="text/css">color: #0000ff</code>
                        </rendition>
                        <rendition xml:id="Note">
                            <desc>transcriptional</desc>
                            <label>Note</label>
                            <code rend="rectangle" lang="text/css">color: #0000ff</code>
                        </rendition>
                        <rendition xml:id="Crown">
                            <desc>transcriptional</desc>
                            <label>Crown</label>
                            <code rend="rectangle" lang="text/css">color: #00FF00</code>
                        </rendition>
                        <rendition xml:id="Sketch">
                            <desc>transcriptional</desc>
                            <label>Sketch</label>
                            <code rend="rectangle" lang="text/css">color: #00FF00</code>
                        </rendition>
                        <rendition xml:id="Rondel">
                            <desc>transcriptional</desc>
                            <label>Rondel</label>
                            <code rend="rectangle" lang="text/css">color: #FFFF00</code>
                        </rendition>
                        <rendition xml:id="Crowned_Rondel">
                            <desc>transcriptional</desc>
                            <label>Crowned Rondel</label>
                            <code rend="rectangle" lang="text/css">color: #FFFF00</code>
                        </rendition>
                        <rendition xml:id="Illustration">
                            <desc>transcriptional</desc>
                            <label>Illustration</label>
                            <code rend="rectangle" lang="text/css">color: #00FF00</code>
                        </rendition>
                        <rendition xml:id="Portrait">
                            <desc>transcriptional</desc>
                            <label>Portrait</label>
                            <code rend="rectangle" lang="text/css">color: #00FF00</code>
                        </rendition>
                        <rendition xml:id="Mandorla">
                            <desc>transcriptional</desc>
                            <label>Mandorla</label>
                            <code rend="rectangle" lang="text/css">color: #00FF00</code>
                        </rendition>
                    </tagsDecl>
                    <appInfo>
                        <application ident="ImageMarkupTool01" version="1.8.2.2"
                            notAfter="2013-09-25T14:06:09">
                            <label> Image Markup Tool</label>
                            <desc> Tool for annotating images using TEI</desc>
                            <ref type="appURI" target="http://hcmc.uvic.ca/~mholmes/image_markup/"> </ref>
                            <ptr target="#imtAnnotatedImage"/>
                            <ptr target="#imtImageAnnotations"/>
                            <ptr target="#imtAnnotationCategories"/>
                        </application>


                    </appInfo>
                </encodingDesc>
            </teiHeader>
            <facsimile xml:id="imtAnnotatedImage">
                <surface>
                    <graphic url="membraneXX.jpg" width="1000px" height="2870px"/>
                    <xsl:for-each select="tr">
                        <xsl:if test="position() &gt; 1">
                            <xsl:variable name="id">
                                <xsl:value-of select="td[2]"/>
                            </xsl:variable>
                            <xsl:variable name="type">
                                <xsl:choose>
                                    <xsl:when test="td[3] = 'Crowned Rondel'">Crowned_Rondel</xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="td[3]"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:variable name="ulx">
                                <xsl:value-of select="td[4]"/>
                            </xsl:variable>
                            <xsl:variable name="uly">
                                <xsl:value-of select="td[5]"/>
                            </xsl:variable>
                            <xsl:variable name="lrx">
                                <xsl:value-of select="td[6]"/>
                            </xsl:variable>
                            <xsl:variable name="lry">
                                <xsl:value-of select="td[7]"/>
                            </xsl:variable>
                            <zone xml:id="{$id}" rendition="{$type}" ulx="{$ulx}" uly="{$uly}"
                                lrx="{$lrx}" lry="{$lry}" rend="visible"/>
                        </xsl:if>
                    </xsl:for-each>
                </surface>
            </facsimile>
            <text>
                <body>
                    <div xml:id="imtImageAnnotations">
                        <xsl:for-each select="tr">
                            <xsl:if test="position() &gt; 1">
                                <xsl:variable name="id">
                                    <xsl:value-of select="td[2]"/>
                                </xsl:variable>
                                <xsl:variable name="type">
                                    <xsl:choose>
                                        <xsl:when test="td[3] = 'Crowned Rondel'">Crowned_Rondel</xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="td[3]"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:variable>
                                <xsl:variable name="title">
                                    <xsl:value-of select="td[8]"/>
                                </xsl:variable>
                                <xsl:variable name="transcription">
                                    <xsl:value-of select="td[9]"/>
                                </xsl:variable>
                                <div facs="#{$id}" type="{$type}">
                                    <head>
                                        <xsl:value-of select="$title"/>
                                    </head>
                                    <div>
                                        <p>
                                            <xsl:value-of select="$transcription"/>
                                        </p>
                                    </div>
                                </div>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </body>
            </text>
        </TEI>
    </xsl:template>
</xsl:stylesheet>
