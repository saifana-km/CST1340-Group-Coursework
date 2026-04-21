<?xml version="1.0" encoding="UTF-8"?> <!--PLACEHOLDER FOR XSL
FILE-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Vinyl and Instrument Catalogue</title> <!-- Working Title -->
                <link rel="stylesheet" type="text/css" href="../HTML/styles.css" />
                <link rel="stylesheet" type="text/css" href="catalogue.css" />
            </head>
            <body>
                <nav>
                    <!-- Logo: left -->
                    <a href="MelodyHomepage.html" class="logo-link">
                        <img src="../HTML/logo.png" alt="Company Logo" class="logo-img" />
                    </a>
                    <!-- Links: center -->
                    <ul class="links">
                        <li>
                            <a href="../HTML/MelodyCatalog.html">Catalog</a>
                        </li>
                        <li>
                            <a href="../HTML/MelodyHomepage.html">About Us</a>
                        </li>
                        <li>
                            <a href="../HTML/contactus.html">Contact</a>
                        </li>
                    </ul>

                    <!-- Icons: right -->
                    <div class="icon-group">
                        <img src="../HTML/Icons.png" alt="Icons" class="icon-img" />
                    </div>
                </nav>

                <div class="container">
                    <h1 style="font-weight: normal">Vinyls</h1>
                    <hr />

                    <h1>Instruments</h1>
                    <hr />
                    <div class="row">
                        <xsl:for-each select="MusicStore/Instrument">
                            <div class="column">
                                <div class="card">

                                    <img
                                        src="https://classic-educational.ae/cdn/shop/files/037-3152-506_1200x.jpg?v=1710094851"
                                        alt="guitar" />

                                    <p><xsl:value-of select="InstrumentName" /></p>

                                    <p><b>
                                        <xsl:value-of select="InstrumentPrice" />
                                    </b></p>

                                    <button>Buy</button>
                                </div>
                                <br />
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>