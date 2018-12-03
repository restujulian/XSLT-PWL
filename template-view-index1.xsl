<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://localhost/xlt/value-khs1.xml">
<xsl:template match="/">
  <html>
  <body>
    <h2>KHS Mahasiswa</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Nama Matakulian</th>
        <th>SKS</th>
        <th>Nilai Huruf</th>
        <th>Nilai Angka</th>
      </tr>
      <tr>
        <td><xsl:value-of select="khs/cd/nama"/></td>
        <td><xsl:value-of select="khs/cd/sks"/></td>
        <td><xsl:value-of select="khs/cd/huruf"/></td>
        <td><xsl:value-of select="khs/cd/angka"/></td>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
