<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#005498</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="title.color">#BA3925</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#7A2518</xsl:param>

  <!-- disable messages that cause some processors to exit prematurely -->
  <xsl:template name="root.messages"/>

  <!-- Disable watermark image to avoid long timeouts fetching from internet -->
  <xsl:param name="draft.watermark.image"/>

  <!--
  <xsl:param name="use.extensions">1</xsl:param>
  -->

  <!-- show URLs of links in footnotes -->
  <xsl:param name="ulink.show" select="1"/>
  <xsl:param name="ulink.footnotes" select="1"/>

  <!-- disable period at end of formal block title -->
  <xsl:param name="runinhead.default.title.end.punct"/>

  <xsl:param name="chapter.autolabel">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-numbered')">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="section.autolabel">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-numbered')">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="section.autolabel.max.depth" select="2"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>

  <xsl:param name="suppress.navigation">0</xsl:param>
  <xsl:param name="navig.graphics.extension">.png</xsl:param>
  <xsl:param name="navig.graphics">0</xsl:param>
  <xsl:param name="navig.graphics.path">images/icons/</xsl:param>
  <xsl:param name="navig.showtitles">0</xsl:param>

  <xsl:param name="shade.verbatim">0</xsl:param>

  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="border">0</xsl:attribute>
    <xsl:attribute name="background-color">#E0E0E0</xsl:attribute>
  </xsl:attribute-set>

  <!--
  <xsl:param name="linenumbering.extension">1</xsl:param>
  <xsl:param name="linenumbering.width">2</xsl:param>
  <xsl:param name="linenumbering.everyNth">1</xsl:param>
  -->

  <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="admon.graphics.path">images/icons/</xsl:param>
  <xsl:param name="admon.graphics.extension">.png</xsl:param>
  <!--
  <xsl:param name="admon.style">
    <xsl:text>margin-left: 0; margin-right: 10%;</xsl:text>
  </xsl:param>
  -->
  <xsl:param name="admon.textlabel">0</xsl:param>

  <xsl:param name="chunk.first.sections" select="0"/>
  <xsl:param name="chunk.quietly" select="0"/>
  <xsl:param name="chunk.section.depth" select="1"/>
  <xsl:param name="chunk.toc" select="''"/>
  <xsl:param name="chunk.tocs.and.lots" select="0"/>

  <xsl:param name="table.borders.with.css" select="1"/>
  <xsl:param name="table.cell.border.color" select="'#527bbd'"/>

  <xsl:param name="table.cell.border.style" select="'solid'"/>
  <xsl:param name="table.cell.border.thickness" select="'1px'"/>
  <xsl:param name="table.footnote.number.format" select="'a'"/>
  <xsl:param name="table.footnote.number.symbols" select="''"/>
  <xsl:param name="table.frame.border.color" select="'#527bbd'"/>
  <xsl:param name="table.frame.border.style" select="'solid'"/>
  <xsl:param name="table.frame.border.thickness" select="'2px'"/>
  <!-- disabled due to missing adjustColumnWidths function -->
  <xsl:param name="tablecolumns.extension">0</xsl:param>

  <xsl:param name="generate.toc">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-toc')">
article toc,title
book    toc,title,figure,table,example,equation
      </xsl:when>
      <xsl:otherwise>
article nop
book    nop
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>

</xsl:stylesheet>