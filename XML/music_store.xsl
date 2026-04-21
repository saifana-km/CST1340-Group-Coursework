<?xml version="1.0" encoding="UTF-8"?> <!--PLACEHOLDER FOR XSL FILE-->
<?xml-stylesheet href="file.css" type="text/css"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Vinyl and Instrument Catalogue</title> <!-- Working Title -->
                <link rel="stylesheet" type="text/css" href="../HTML/styles.css" />
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

                <h1 style="font-weight: normal">Vinyls</h1>
                <hr />

                <h1 style="font-weight: normal">Instruments</h1>
                <hr />
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>