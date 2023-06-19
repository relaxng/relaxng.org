<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- This stylesheet was created by template/titlepage.xsl; do not edit it by hand. -->

<xsl:template name="article.titlepage.recto">
  <xsl:choose>
    <xsl:when test="articleinfo/title">
      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/title"/>
    </xsl:when>
    <xsl:when test="artheader/title">
      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/title"/>
    </xsl:when>
    <xsl:when test="title">
      <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="title"/>
    </xsl:when>
  </xsl:choose>

  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/pubdate"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/pubdate"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/revhistory"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/revhistory"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/authorgroup"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/authorgroup"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/copyright"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/copyright"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/legalnotice[not(@role) or @role!='status']"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/legalnotice[not(@role) or @role!='status']"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/abstract"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/abstract"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/legalnotice[@role='status']"/>
  <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="artheader/legalnotice[@role='status']"/>
</xsl:template>

<xsl:template name="article.titlepage.verso">
</xsl:template>

<xsl:template name="article.titlepage.separator">
</xsl:template>

<xsl:template name="article.titlepage.before.recto"><p class="logo">
	<a href="http://www.oasis-open.org/">
	  <img src="oasis.png" alt="OASIS" border="0"/>
	</a>
      </p>
</xsl:template>

<xsl:template name="article.titlepage.before.verso">
</xsl:template>

<xsl:template name="article.titlepage">
  <div class="titlepage">
    <xsl:call-template name="article.titlepage.before.recto"/>
    <xsl:call-template name="article.titlepage.recto"/>
    <xsl:call-template name="article.titlepage.before.verso"/>
    <xsl:call-template name="article.titlepage.verso"/>
    <xsl:call-template name="article.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="article.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="article.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="title" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="pubdate" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="revhistory" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="authorgroup" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="copyright" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="legalnotice" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="abstract" mode="article.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="article.titlepage.recto.style">
<xsl:apply-templates select="." mode="article.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template name="appendix.titlepage.recto">
  <xsl:choose>
    <xsl:when test="appendixinfo/title">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/title"/>
    </xsl:when>
    <xsl:when test="docinfo/title">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/title"/>
    </xsl:when>
    <xsl:when test="title">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="title"/>
    </xsl:when>
  </xsl:choose>

  <xsl:choose>
    <xsl:when test="appendixinfo/subtitle">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="docinfo/subtitle">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="subtitle">
      <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="subtitle"/>
    </xsl:when>
  </xsl:choose>

  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/corpauthor"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/corpauthor"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/authorgroup"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/authorgroup"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/author"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/author"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/releaseinfo"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/releaseinfo"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/copyright"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/copyright"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/legalnotice"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/legalnotice"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/pubdate"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/pubdate"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/revision"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/revision"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/revhistory"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/revhistory"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="appendixinfo/abstract"/>
  <xsl:apply-templates mode="appendix.titlepage.recto.auto.mode" select="docinfo/abstract"/>
</xsl:template>

<xsl:template name="appendix.titlepage.verso">
</xsl:template>

<xsl:template name="appendix.titlepage.separator">
</xsl:template>

<xsl:template name="appendix.titlepage.before.recto">
</xsl:template>

<xsl:template name="appendix.titlepage.before.verso">
</xsl:template>

<xsl:template name="appendix.titlepage">
  <div class="titlepage">
    <xsl:call-template name="appendix.titlepage.before.recto"/>
    <xsl:call-template name="appendix.titlepage.recto"/>
    <xsl:call-template name="appendix.titlepage.before.verso"/>
    <xsl:call-template name="appendix.titlepage.verso"/>
    <xsl:call-template name="appendix.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="appendix.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="appendix.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="title" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="subtitle" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="corpauthor" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="authorgroup" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="author" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="releaseinfo" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="copyright" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="legalnotice" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="pubdate" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="revision" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="revhistory" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="abstract" mode="appendix.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="appendix.titlepage.recto.style">
<xsl:apply-templates select="." mode="appendix.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template name="section.titlepage.recto">
  <xsl:choose>
    <xsl:when test="sectioninfo/title">
      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/title"/>
    </xsl:when>
    <xsl:when test="title">
      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="title"/>
    </xsl:when>
  </xsl:choose>

  <xsl:choose>
    <xsl:when test="sectioninfo/subtitle">
      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/subtitle"/>
    </xsl:when>
    <xsl:when test="subtitle">
      <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="subtitle"/>
    </xsl:when>
  </xsl:choose>

  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/corpauthor"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/authorgroup"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/author"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/releaseinfo"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/copyright"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/legalnotice"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/pubdate"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/revision"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/revhistory"/>
  <xsl:apply-templates mode="section.titlepage.recto.auto.mode" select="sectioninfo/abstract"/>
</xsl:template>

<xsl:template name="section.titlepage.verso">
</xsl:template>

<xsl:template name="section.titlepage.separator"><xsl:if test="count(parent::*)='0'"><hr/></xsl:if>
</xsl:template>

<xsl:template name="section.titlepage.before.recto">
</xsl:template>

<xsl:template name="section.titlepage.before.verso">
</xsl:template>

<xsl:template name="section.titlepage">
  <div class="titlepage">
    <xsl:call-template name="section.titlepage.before.recto"/>
    <xsl:call-template name="section.titlepage.recto"/>
    <xsl:call-template name="section.titlepage.before.verso"/>
    <xsl:call-template name="section.titlepage.verso"/>
    <xsl:call-template name="section.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="section.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="section.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="title" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:call-template name="section.title">
</xsl:call-template>
</div>
</xsl:template>

<xsl:template match="subtitle" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="corpauthor" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="authorgroup" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="author" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="releaseinfo" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="copyright" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="legalnotice" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="pubdate" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="revision" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="revhistory" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template match="abstract" mode="section.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="section.titlepage.recto.style">
<xsl:apply-templates select="." mode="section.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template name="bibliography.titlepage.recto">
  <div xsl:use-attribute-sets="bibliography.titlepage.recto.style">
<xsl:call-template name="component.title">
<xsl:with-param name="node" select="ancestor-or-self::bibliography[1]"/>
</xsl:call-template></div>
  <xsl:choose>
    <xsl:when test="bibliographyinfo/subtitle">
      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="bibliographyinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="docinfo/subtitle">
      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="subtitle">
      <xsl:apply-templates mode="bibliography.titlepage.recto.auto.mode" select="subtitle"/>
    </xsl:when>
  </xsl:choose>

</xsl:template>

<xsl:template name="bibliography.titlepage.verso">
</xsl:template>

<xsl:template name="bibliography.titlepage.separator">
</xsl:template>

<xsl:template name="bibliography.titlepage.before.recto">
</xsl:template>

<xsl:template name="bibliography.titlepage.before.verso">
</xsl:template>

<xsl:template name="bibliography.titlepage">
  <div class="titlepage">
    <xsl:call-template name="bibliography.titlepage.before.recto"/>
    <xsl:call-template name="bibliography.titlepage.recto"/>
    <xsl:call-template name="bibliography.titlepage.before.verso"/>
    <xsl:call-template name="bibliography.titlepage.verso"/>
    <xsl:call-template name="bibliography.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="bibliography.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="bibliography.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="subtitle" mode="bibliography.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="bibliography.titlepage.recto.style">
<xsl:apply-templates select="." mode="bibliography.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template name="glossary.titlepage.recto">
  <div xsl:use-attribute-sets="glossary.titlepage.recto.style">
<xsl:call-template name="component.title">
<xsl:with-param name="node" select="ancestor-or-self::glossary[1]"/>
</xsl:call-template></div>
  <xsl:choose>
    <xsl:when test="glossaryinfo/subtitle">
      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="glossaryinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="docinfo/subtitle">
      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="subtitle">
      <xsl:apply-templates mode="glossary.titlepage.recto.auto.mode" select="subtitle"/>
    </xsl:when>
  </xsl:choose>

</xsl:template>

<xsl:template name="glossary.titlepage.verso">
</xsl:template>

<xsl:template name="glossary.titlepage.separator">
</xsl:template>

<xsl:template name="glossary.titlepage.before.recto">
</xsl:template>

<xsl:template name="glossary.titlepage.before.verso">
</xsl:template>

<xsl:template name="glossary.titlepage">
  <div class="titlepage">
    <xsl:call-template name="glossary.titlepage.before.recto"/>
    <xsl:call-template name="glossary.titlepage.recto"/>
    <xsl:call-template name="glossary.titlepage.before.verso"/>
    <xsl:call-template name="glossary.titlepage.verso"/>
    <xsl:call-template name="glossary.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="glossary.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="glossary.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="subtitle" mode="glossary.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="glossary.titlepage.recto.style">
<xsl:apply-templates select="." mode="glossary.titlepage.recto.mode"/>
</div>
</xsl:template>

<xsl:template name="index.titlepage.recto">
  <div xsl:use-attribute-sets="index.titlepage.recto.style">
<xsl:call-template name="component.title">
<xsl:with-param name="node" select="ancestor-or-self::index[1]"/>
</xsl:call-template></div>
  <xsl:choose>
    <xsl:when test="indexinfo/subtitle">
      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="indexinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="docinfo/subtitle">
      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="docinfo/subtitle"/>
    </xsl:when>
    <xsl:when test="subtitle">
      <xsl:apply-templates mode="index.titlepage.recto.auto.mode" select="subtitle"/>
    </xsl:when>
  </xsl:choose>

</xsl:template>

<xsl:template name="index.titlepage.verso">
</xsl:template>

<xsl:template name="index.titlepage.separator">
</xsl:template>

<xsl:template name="index.titlepage.before.recto">
</xsl:template>

<xsl:template name="index.titlepage.before.verso">
</xsl:template>

<xsl:template name="index.titlepage">
  <div class="titlepage">
    <xsl:call-template name="index.titlepage.before.recto"/>
    <xsl:call-template name="index.titlepage.recto"/>
    <xsl:call-template name="index.titlepage.before.verso"/>
    <xsl:call-template name="index.titlepage.verso"/>
    <xsl:call-template name="index.titlepage.separator"/>
  </div>
</xsl:template>

<xsl:template match="*" mode="index.titlepage.recto.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="*" mode="index.titlepage.verso.mode">
  <!-- if an element isn't found in this mode, -->
  <!-- try the generic titlepage.mode -->
  <xsl:apply-templates select="." mode="titlepage.mode"/>
</xsl:template>

<xsl:template match="subtitle" mode="index.titlepage.recto.auto.mode">
<div xsl:use-attribute-sets="index.titlepage.recto.style">
<xsl:apply-templates select="." mode="index.titlepage.recto.mode"/>
</div>
</xsl:template>

</xsl:stylesheet>