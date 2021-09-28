<%-- 
    Document   : Index
    Created on : 21-Sep-2021, 21:03:04
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/album.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/mediaqueries.css">
        <link rel="stylesheet" href="css/hero.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" asp-append-version="true" />

        <title>Home</title>
    </head>
    <body>
        <%@include file="shared/header.jsp" %>

        <section class="hero">
            <div class="hero-container">
                <div class="hero-content">
                    <h1 class="hero-title">Go Premium. Be happy.</h1>
                    <button class="hero-button" href="Login.html">GET PREMIUM ACCOUNT</button>
                    <div class="terms">
                        <span>*</span>
                        <a href="#" class="hero-terms-link">Terms and conditions</a><span>apply.</span>
                    </div>
                </div>
            </div>
        </section>
        <!-- GENRES -->
        <section class="albums" style="background: url('https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/SHS_Press_Image_20180829210243__1025eaf4.jpg');">
            <div class="albums-container">
                <h2 style="padding: 20px 0; font-size:xx-large;color:white">Your top genres</h2>
                <div class="genres_playlist">
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DXcBWIGoYBM5M" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWUa8ZRTfalHk" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYs83FtTMQFw" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWT1y71ZcMPe5" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX0F4i7Q9pshJ" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWYLMi9ZNZUaz" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX7DJr8fImN7B" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX8W1KRahEf22" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWXyWQDPxZbns" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DX0BcQWzuB7ZO" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWX3sGzKRxSTn" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/playlist/37i9dQZF1DWT2oR9BciC32" width="300" height="80" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <a href="" class="more">And more...</a>
                </div>
            </div>

        </section>
        <!-- PODCAST -->
        <section class="albums" style="background: url('https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/S7_20180826013339__a9db2c48.jpg');">
            <div class="albums-container">
                <h2 style="padding: 20px 0; font-size:xx-large;">TOP PODCAST</h2>
                <div class="genres_playlist">
                    <iframe src="https://open.spotify.com/embed/show/7Eo5RqrItEwmuwSJv5n6QZ" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/show/3KAOtwtuHrBznKxkQfY0v6" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/show/0X0b4Wb7cgvs7UCVSBaqGo" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/show/5PrXI00Z7y7V755LL2Eah8" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/show/3aP5rlYKQSJs1qEMfPhh8b" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <iframe src="https://open.spotify.com/embed/show/6wPSMH6Yg6ghl4yPZ9YWMf" width="300" height="300" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    <a href="" class="more" style="color:black">And more...</a>
                </div>
            </div>

        </section>
        <!-- ALBUMS -->
        <section class="albums" style="background: url('https://storage.googleapis.com/pr-newsroom-wp/1/2018/11/Spotify_Free_Experience_Cover_20180823163647__60b8c1d6.jpg');">
            <div class="albums-container">
                <div class="albums-content">
                    <h2>Looking for music?</h2>
                    <p>Start listening to the best new releases.</p>
                    <button href="Login.html">JOIN WITH US</button>
                    <!-- @*<iframe src="https://open.spotify.com/embed/album/1DFixLWuPkv3KT3TnV35m3" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>*@ -->
                </div>
                <div class="albums-cards-container">
                    <!-- Travis Scott -->
                    <c:forEach items="${requestScope.top6}" var="song">
                        <div class="album">
                            <img src="${song.img}" />
                            <div class="album-info">
                                <h2>${song.name}</h2>
                                <h4>Travis Scott</h4>
                                <a href="player?id=${song.songID}">PLAY NOW</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

        </section>

        <%@include file="shared/footer.jsp" %>
    </body>
</html>
