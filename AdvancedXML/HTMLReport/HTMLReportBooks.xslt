<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:ct="http://epam.com/learn/html_books"
  extension-element-prefixes="ct">

  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:param name="Date" select="''"/>
  <xsl:key name="genres" match="/ct:catalog/ct:book/ct:genre/text()" use="." />
  <xsl:template match="/">
    <p>Catalog date: <xsl:value-of select="$Date"/></p>
    <xsl:for-each select="/ct:catalog/ct:book/ct:genre/text()[generate-id()= generate-id(key('genres',.)[1])]">
      <li><xsl:value-of select="."/></li>
      <xsl:variable name='gId'>
        <xsl:value-of select="."/>
      </xsl:variable>
      <p>
        <table id="books">
          <tr>
            <th>author</th>
            <th>title</th>
            <th>genre</th>
            <th>publish_date</th>
            <th>registration_date</th>
          </tr>
          <xsl:for-each select="/ct:catalog/ct:book[ct:genre=$gId]">
            <tr>
              <td>
                <xsl:value-of select="ct:author"/>
              </td>
              <td>
                <xsl:value-of select="ct:title"/>
              </td>
              <td>
                <xsl:value-of select="ct:genre"/>
              </td>
              <td>
                <xsl:value-of select="ct:publish_date"/>
              </td>
              <td>
                <xsl:value-of select="ct:registration_date"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </p>
    </xsl:for-each>  
  </xsl:template>
</xsl:stylesheet>