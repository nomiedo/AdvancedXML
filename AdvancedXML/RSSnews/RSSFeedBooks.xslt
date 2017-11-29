<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:ct="http://epam.com/learn/rss_books"
  extension-element-prefixes="ct">

  <xsl:output indent="yes"/>

  <xsl:template match="/ct:catalog">
    <rss version="2.0">
      <channel>
        <title>RSS Books</title>
        <description>Books RSS feed</description>
        <link>http://my.safaribooksonline.com/</link>
        <xsl:apply-templates select ="/ct:catalog/ct:book" />
      </channel>
    </rss>
  </xsl:template>

  <xsl:template match="/ct:catalog/ct:book">
    <item>
      <title><xsl:value-of select="ct:title"/></title>
        <description><xsl:value-of select="ct:description"/></description>
        <author><xsl:value-of select="ct:author"/></author>
        <category><xsl:value-of select="ct:genre"/></category>
        <xsl:if test="ct:isbn"><link>http://my.safaribooksonline.com/<xsl:value-of select="ct:isbn"/>/</link></xsl:if>
        <pubDate><xsl:value-of select="ct:registration_date"/></pubDate>
    </item>
  </xsl:template>

</xsl:stylesheet>