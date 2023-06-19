<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:rng="http://relaxng.org/ns/structure/1.0"
                exclude-result-prefixes="rng">

<xsl:variable name="indent" select="'  '"/>

<xsl:output encoding="iso-8859-1"/>

<xsl:strip-space elements="rng:*"/>

<xsl:template match="/" mode="print">
  <xsl:param name="id" select="''"/>
  <pre>
    <xsl:apply-templates mode="print">
      <xsl:with-param name="id" select="$id"/>
    </xsl:apply-templates>
  </pre>
</xsl:template>

<xsl:template match="*" mode="print"/>

<xsl:template match="rng:*" mode="print">
  <xsl:param name="totalIndent" select="''"/>
  <xsl:param name="id" select="''"/>
  <xsl:if test="parent::rng:grammar">
    <xsl:call-template name="newline"/>
  </xsl:if>
  <xsl:value-of select="$totalIndent"/>
  <xsl:if test="self::rng:define|self::rng:start[@name]">
   <a name="{$id}:{@name}"/>
  </xsl:if>
  <xsl:text>&lt;</xsl:text>
  <xsl:value-of select="local-name()"/>
  <xsl:apply-templates select="@*" mode="print">
    <xsl:with-param name="totalIndent" select="concat($totalIndent, $indent)"/>
    <xsl:with-param name="id" select="$id"/>
  </xsl:apply-templates>
  <xsl:if test="not(parent::*)">
    <xsl:choose>
      <xsl:when test="@*">
        <xsl:call-template name="newline"/>
        <xsl:value-of select="$totalIndent"/>
        <xsl:value-of select="$indent"/>
      </xsl:when>
      <xsl:otherwise><xsl:text> </xsl:text></xsl:otherwise>
    </xsl:choose>
    <xsl:text>xmlns=&quot;</xsl:text>
    <xsl:value-of select="namespace-uri()"/>
    <xsl:text>&quot;</xsl:text>
    <xsl:for-each select="namespace::*[local-name() and local-name() != 'xml']">
      <xsl:call-template name="newline"/>
      <xsl:value-of select="$totalIndent"/>
      <xsl:value-of select="$indent"/>
      <xsl:text>xmlns:</xsl:text>
      <xsl:value-of select="local-name()"/>
      <xsl:text>=&quot;</xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&quot;</xsl:text>
    </xsl:for-each>
  </xsl:if>
  <xsl:choose>
    <xsl:when test="text()">
      <xsl:text>&gt;</xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&lt;/</xsl:text>
      <xsl:value-of select="local-name()"/>
      <xsl:text>&gt;</xsl:text>
    </xsl:when>
    <xsl:when test="not(*)">/&gt;</xsl:when>
    <xsl:otherwise>
      <xsl:text>&gt;</xsl:text>
      <xsl:call-template name="newline"/>
      <xsl:apply-templates mode="print">
	<xsl:with-param name="totalIndent" select="concat($totalIndent, $indent)"/>
        <xsl:with-param name="id" select="$id"/>
      </xsl:apply-templates>
      <xsl:if test="self::rng:grammar">
        <xsl:call-template name="newline"/>
      </xsl:if>
      <xsl:value-of select="$totalIndent"/>
      <xsl:text>&lt;/</xsl:text>
      <xsl:value-of select="local-name()"/>
      <xsl:text>&gt;</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:call-template name="newline"/>
</xsl:template>

<xsl:template match="@*[1]" mode="print">
  <xsl:param name="id" select="''"/>
  <xsl:text> </xsl:text>
  <xsl:value-of select="local-name()"/>
  <xsl:text>=&quot;</xsl:text>
  <xsl:call-template name="value">
    <xsl:with-param name="id" select="$id"/>
  </xsl:call-template>
  <xsl:text>&quot;</xsl:text>
</xsl:template>

<xsl:template match="@*" mode="print">
  <xsl:param name="id" select="''"/>
  <xsl:param name="totalIndent" select="''"/>
  <xsl:call-template name="newline"/>
  <xsl:value-of select="$totalIndent"/>
  <xsl:value-of select="local-name()"/>
  <xsl:text>=&quot;</xsl:text>
  <xsl:call-template name="value">
    <xsl:with-param name="id" select="$id"/>
  </xsl:call-template>
  <xsl:text>&quot;</xsl:text>
</xsl:template>

<xsl:template name="value">
  <xsl:param name="id" select="''"/>
  <xsl:choose>
    <xsl:when test="parent::rng:ref">
      <a href="#{$id}:{.}"><xsl:value-of select="."/></a>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="newline"><xsl:text>&#xA;</xsl:text></xsl:template>

</xsl:stylesheet>
