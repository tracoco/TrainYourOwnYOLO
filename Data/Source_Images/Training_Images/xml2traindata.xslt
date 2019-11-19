<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
  <xsl:variable
    name="file"
    select="/annotation/filename">
  </xsl:variable>
  <xsl:template match="/">
    <xsl:text>"/home/lee/git/TrainYourOwnYOLO/Data/Source_Images/Training_Images/vott-csv-export/</xsl:text><xsl:value-of select="$file"/><xsl:text>"</xsl:text> <xsl:text> </xsl:text>
    <xsl:for-each select="annotation/object/name[.='company_detail']">
      <xsl:value-of select="../bndbox/xmin"/>,<xsl:value-of select="../bndbox/ymin"/>,<xsl:value-of select="../bndbox/xmax"/>,<xsl:value-of select="../bndbox/ymax"/>,<xsl:text>0</xsl:text>
      <xsl:if test="position() != last()"><xsl:text> </xsl:text></xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
