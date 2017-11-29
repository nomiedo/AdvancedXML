<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:ct="http://epam.com/learn/html_books"
  extension-element-prefixes="ct">

  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:param name="Date" select="''"/>

  <xsl:template match="/ct:catalog">
    <html>
      <head>
        <style>
          #books {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 100%;
          }

          #books td, #customers th {
          border: 1px solid #ddd;
          padding: 8px;
          }

          #books tr:nth-child(even){background-color: #f2f2f2;}

          #books tr:hover {background-color: #ddd;}

          #books th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #4CAF50;
          color: white;
          }
        </style>
      </head>
      <body>
    <p> Catalog date: <xsl:value-of select="$Date"/></p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Computer']" />
      </table>
    </p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Fantasy']" />
      </table>
    </p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Fantasy']" />
      </table>
    </p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Romance']" />
      </table>
    </p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Science Fiction']" />
      </table>
    </p>
    <p>
      <table id="books">
        <tr>
          <th>author</th>
          <th>title</th>
          <th>genre</th>
          <th>publish_date</th>
          <th>registration_date</th>
        </tr>
        <xsl:apply-templates select ="/ct:catalog/ct:book[ct:genre='Horror']" />
      </table>
    </p>
    </body>
    </html>
  </xsl:template>
  
  <xsl:template match="/ct:catalog/ct:book[ct:genre='Computer']">
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
  </xsl:template>

  <xsl:template match="/ct:catalog/ct:book[ct:genre='Fantasy']">
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
  </xsl:template>

  <xsl:template match="/ct:catalog/ct:book[ct:genre='Romance']">
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
  </xsl:template>

  <xsl:template match="/ct:catalog/ct:book[ct:genre='Science Fiction']">
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
  </xsl:template>

  <xsl:template match="/ct:catalog/ct:book[ct:genre='Horror']">
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
  </xsl:template>
  
</xsl:stylesheet>