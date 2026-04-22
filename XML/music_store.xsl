<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <!-- HEAD -->
            <head>
                <title>Vinyl and Instrument Catalogue</title>
                <link rel="stylesheet" type="text/css" href="../HTML/styles.css" />
                <link rel="stylesheet" type="text/css" href="catalogue.css" />
            </head>

            <body>

                <!-- NAVBAR -->
                <nav>
                    <!-- Logo: Left -->
                    <a href="MelodyHomepage.html" class="logo-link">
                        <img src="../HTML/logo.png" alt="Company Logo" class="logo-img" />
                    </a>

                    <!-- Links: Center -->
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

                    <!-- Icons: Right -->
                    <div class="icon-group">
                        <img src="../HTML/Icons.png" alt="Icons" class="icon-img" />
                    </div>
                </nav>

                <!-- MAIN CONTENT-->
                <div class="container">

                    <!-- VINYLS SECTION -->
                    <h1>Vinyls</h1>
                    <hr />

                    <!-- INSTRUMENTS SECTION -->
                    <h1>Instruments</h1>
                    <hr />

                    <!-- INSTRUMENT CARDS: Loops through each Instrument in MusicStore -->
                    <div class="row">
                        <xsl:for-each select="MusicStore/Instrument">
                            <div class="column">
                                <div class="card">

                                    <!-- Instrument Image: src and alt pulled from XML -->
                                    <img src="{InstrumentImage}" alt="{InstrumentName}" />

                                    <!-- Instrument Name -->
                                    <p><xsl:value-of select="InstrumentName" /></p>

                                    <!-- Instrument Price -->
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