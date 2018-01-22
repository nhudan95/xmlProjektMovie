<?xml version="1.0" encoding="UTF-8" ?>
<!-- New document created with EditiX at Wed Jan 03 19:25:47 CET 2018 -->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:fn="http://www.w3.org/2005/xpath-functio">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <link rel="stylesheet" type="text/css" href="movie_css.css"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link href="https://fonts.googleapis.com/css?family=Lato|Oswald|Raleway" rel="stylesheet"/>
                <title>MOVIE</title>
            </head>
            <body>
                <!--NAVIGATION-->
                <div class="navi_backcolor"></div>
                <div class="navigation">
                    <div class="logo">
                        <a href="welcome">
                            <img src="movie/img/logo.png" alt="logo"/>
                        </a>
                    </div>
                    <div class="search">
                        <div class="select_all">
                            <form action="movie/movie_search_all.html" method="get">
                                <input id="text" type="text" name="text" placeholder="Search for Movies, Actors, Directors and more..."/>
                                <select name="search_type" id="search_type">
                                    <option value="All">All</option>
                                    <option value="Actor">Actors</option>
                                    <option value="Country">Country</option>
                                    <option value="Director">Directors</option>
                                    <option value="Title">Title</option>
                                </select>
                                <input id="submit_button" src="movie/img/searchicon.png" name="submit" type="image"/>
                            </form>
                        </div>
                        <div class="links">
                            <div class="topfive">
                                <a href="movie/topFive.html" target="_blank">TOP 5</a>
                            </div>
                            <div class="allmovies">
                                <a href="movie/allMovies.html" target="_blank">ALL MOVIES</a>
                            </div>
                            <div class="genre">
                                <!--<a href="movie/genre.html" target="_blank">GENRE</a>-->
                                <form action="movie/movie_search_all.html" target="_blank" method="get">
                                    <select name="search_genre" id="search_genre">
                                        <option id="genre_name" value="" disabled="disabled" selected="selected">GENRE</option>
                                        <xsl:variable name="genre" select="distinct-values(//movie/genres/genre)"/>
                                        <xsl:for-each select="$genre">
                                            <xsl:sort select="."/>
                                            <option value="{.}">
                                                <xsl:value-of select="."/>
                                            </option>
                                        </xsl:for-each>
                                    </select>
                                    <input id="submit_button" src="movie/img/searchicon.png" name="submit" type="image"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--SLIDESHOW UPCOMING MOVIES-->
                <section id="screen1">
                    <h1>UPCOMING MOVIES </h1>
                    <div class="block">
                        <div class="grid">
                            <xsl:for-each select="//movie[rating=0.0]/title">
                                <xsl:sort select="."></xsl:sort>
                                <xsl:variable name="title">
                                    <xsl:value-of select="."></xsl:value-of>
                                </xsl:variable>
                                <xsl:variable name="img_id">
                                    <xsl:value-of select="../@id"></xsl:value-of>
                                </xsl:variable>
                                <xsl:if test="position() &lt;= 3">
                                    <xsl:copy-of select="."/>
                                    <form action="movie/movieinfo.html" method="get">
                                        <button type="submit" name="img_id" value="{$img_id}">
                                            <img class="allM_imgA" title="{$title}">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="../image/ImageLocation"/>
                                                </xsl:attribute>
                                            </img>
                                        </button>
                                    </form>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                    </div>
                    <div class="down_div">
                        <a href="#screen2">
                            <img id="down" src="img/down.png"/>
                        </a>
                    </div>
                </section>
                <section id="screen2">
                    <div class="about">
                        <h1>ABOUT</h1>
                        <div id="lorem">
                            <p id="about_text">
                        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                                                    </p>
                        </div>
                    </div>
                    <div class="up_div">
                        <a href="#screen1">
                            <img id="up" src="img/up.png"/>
                        </a>
                    </div>
                </section>
                <footer>
                    <div class="textOne">IMPRESSUM | Hochschule Bremen | Flughafenalee 10 | 28199 Bremen | Deutschland </div>
                    <div class="textTwo">©MMN 2018</div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>