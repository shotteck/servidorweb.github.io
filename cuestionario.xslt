<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/" name="xsl:initial-template">
    <link rel="stylesheet" href="estilocuestionario.css"></link>
    
    <html>
      <header>
        <h1>Cuestionario</h1>
      </header>
      
      <body>
      <div class="fondo-animado">
        <div class="d1">
          <form>
            
            <xsl:for-each select="preguntas/pregunta">
              <form>
                <div class="d2">
                  <p><xsl:value-of select="enunciado"/></p>
                  <xsl:for-each select="respuestas/respuesta">
                    <p>
                      <label>
                        <input type="radio" name="respuesta" value="respuesta"/>
                        <xsl:value-of select="."/>
                      </label>
                    </p>
                  </xsl:for-each>
                </div>
              </form>
            </xsl:for-each>
            <div class="sub">
            <input class="env" type="submit" value="Enviar"/>
            </div>
          </form>
        </div>
        </div>
      </body>
      
      
    </html>
    
  </xsl:template>
</xsl:stylesheet>