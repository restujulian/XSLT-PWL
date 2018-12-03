<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="max-width:500px; margin:auto;">
  <h2 style="text-align:center;">Kartu Hasil Studi</h2>
  <table border="1" cellpadding="10" cellspacing="5">
    <tr bgcolor="#0984e3" style="color:white;">
      <th rowspan="2">Nama Matakulian</th>
      <th rowspan="2">SKS</th>
      <th colspan="2">Nilai</th>
    </tr>
    <tr bgcolor="#0984e3" style="color:white;">
      <th>Huruf</th>
      <th>Angka</th>
    </tr>
    <xsl:for-each select="khs/mata-kuliah">
    <tr>
      <td align="left"><xsl:value-of select="nama"/></td>
      <td align="center"><xsl:value-of select="sks"/></td>
      <xsl:choose>
        <xsl:when test="angka > 2">
          <td align="center" bgcolor="#00b894"><xsl:value-of select="huruf"/></td>
          <td align="center" bgcolor="#00b894"><xsl:value-of select="angka"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td align="center" bgcolor="#ff7675"><xsl:value-of select="huruf"/></td>
          <td align="center" bgcolor="#ff7675"><xsl:value-of select="angka"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>