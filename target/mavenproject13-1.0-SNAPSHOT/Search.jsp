<%-- 
    Document   : Search
    Created on : 22-Sep-2021, 10:52:34
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
        <div id="player-content">
            <div id="album-art">
                <img src="https://raw.githubusercontent.com/himalayasingh/music-player-1/master/img/_1.jpg" class="active" id="_1">
                <div id="buffer-box">Buffering ...</div>
            </div>
            <div id="player-controls">
                <div class="control">
                    <div class="button" id="play-previous">
                        <i class="fas fa-backward"></i>
                    </div>
                </div>
                <div class="control">
                    <div class="button" id="play-pause-button">
                        <i class="fas fa-play"></i>
                    </div>
                </div>
                <div class="control">
                    <div class="button" id="play-next">
                        <i class="fas fa-forward"></i>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
