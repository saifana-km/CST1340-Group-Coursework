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
                    <a href="../HTML/MelodyHomepage.html" class="logo-link">
                        <img src="../HTML/logo.png" alt="Company Logo" class="logo-img" />
                    </a>

                    <ul class="links">
                        <li><a href="../XML/music_store.xml">Catalogue</a></li>
                        <li><a href="../HTML/MelodyHomepage.html">About Us</a></li>
                        <li><a href="../HTML/contactus.html">Contact</a></li>
                    </ul>

                    <div class="icon-group">
                        <img src="../HTML/Icons.png" alt="Icons" class="icon-img" />
                    </div>
                </nav>

            <div class="layout">

                <!-- LEFT: MAIN CONTENT -->
                <div class="main">
                    <div class="container">

                        <!-- VINYLS SECTION -->
                        <h1>Vinyls</h1>
                        <hr />

                        <div class="row">
                            <xsl:for-each select="MusicStore/Vinyl">
                                <div class="column">
                                    <div class="card">
                                        <img src="{VinylImage}" alt="{Title}" />
                                        <p><xsl:value-of select="Title" /></p>
                                        <p class="artist"><xsl:value-of select="Artist" /></p>
                                        <p><b><xsl:value-of select="VinylPrice" /></b></p>
                                        <button>Buy</button>
                                    </div>
                                    <br />
                                </div>
                            </xsl:for-each>
                        </div>

                        <!-- INSTRUMENTS SECTION -->
                        <h1>Instruments</h1>
                        <hr />

                        <div class="row">
                            <xsl:for-each select="MusicStore/Instrument">
                                <div class="column">
                                    <div class="card">
                                        <img src="{InstrumentImage}" alt="{InstrumentName}" />
                                        <p><xsl:value-of select="InstrumentName" /></p>
                                        <p><b><xsl:value-of select="InstrumentPrice" /></b></p>
                                        <button>Buy</button>
                                    </div>
                                    <br />
                                </div>
                            </xsl:for-each>
                        </div>

                    </div>
                </div>

                <!-- RIGHT: SIDEBAR -->
                <div class="sidebar">
                    <h2>Trending Vinyls .✦ ݁˖h2>

                    <ol class="trending-list">
                        <xsl:for-each select="MusicStore/Vinyl[position() &lt;= 5]">
                            <li>
                                <b><xsl:value-of select="Title" /></b>
                                <span class="artist"> — <xsl:value-of select="Artist" /></span>
                            </li>
                        </xsl:for-each>
                    </ol>

                </div>

            </div>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
