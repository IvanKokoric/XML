<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
        <meta charset="UTF-8" />
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
                <link href="style.css" rel="stylesheet" type="text/css" media="all" />
        </head>

        <body>
        
        <header>
            <h2>Top 10 Filmova!</h2>
        </header>

        <main class="wrapper">
            <xsl:for-each select="Filmovi/Film">
                <div class="left">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Slika//@href"/>
                    </xsl:attribute>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="Slika//@src"/>
                        </xsl:attribute>
                    </img>
                </a>
                </div>
                <div class="right">
                    <h2><xsl:value-of select="Title"/></h2>
                    <p><b>Naziv:</b> <xsl:value-of select="Naziv"/>
                        <br/>
                        <b>Redatelj:</b> <xsl:value-of select="Redatelj"/>
                        <br />
                        <b>Glavne uloge:</b> <xsl:value-of select="GlavneUloge"/>
                        <br/>
                        <b>Opis:</b> <xsl:value-of select="Opis"/>
                    </p>
                </div>
            </xsl:for-each>
        </main>

        <footer>
            <p>Projekt izradio : <b>Ivan Kokorić</b></p>
        </footer>

        </body>
    </html>
</xsl:template>
</xsl:stylesheet>