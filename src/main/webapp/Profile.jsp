<%-- 
    Document   : Profile
    Created on : 21-Sep-2021, 21:03:43
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/profile.css">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/mediaqueries.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              asp-append-version="true" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
    </head>

    <body>
        <%@include file="shared/header.jsp" %>

        <div class="player">
            <div class="player_body">
                <div class="side_bar_home">
                    <img style="width: 70px;border-radius:50%;margin-left:32%; margin-bottom:20px"
                         src="https://www.w3schools.com/w3images/avatar5.png" alt="">
                    <div class="sidebar_option  sidebar_active">
                        <i class="fas fa-home"></i>
                        <a href="profile"><p>Profile Overview</p></a>
                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-pencil-alt"></i>
                        <a href="account"><p>Edit profile</p></a>
                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-unlock"></i>
                        <p>
                            Password changing
                        </p>
                    </div>

                    <div class="sidebar_option">
                        <i class="fas fa-podcast"></i>
                        <p>
                            Manage playlist
                        </p>

                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-bell"></i>
                        <p>
                            Manage Notification
                        </p>

                    </div>
                    <div class="sidebar_option">
                        <i class="fas fa-record-vinyl"></i>
                        <p>
                            Contract information
                        </p>

                    </div>
                </div>
                <div class="colection_body">
                    <div class="collection_header">
                        <h1>Profile Overview</h1>
                    </div>
                    <h3 style="font-size: 24px;font-family: spotify-circular, Helvetica, Arial, sans-serif;
                        line-height: 32px;margin: 20px 50px;">Profile</h3>
                    <table class="user_info">
                        <colgroup>
                            <col class="col_request">
                            <col class="col_form">
                        </colgroup>
                        <tbody>
                            <tr>
                                <td style="color: #b3b3b3;">User name</td>
                                <td style="font-weight:bold">I'm user's name</td>
                            </tr>
                            <tr>
                                <td style="color: #b3b3b3;">Email</td>
                                <td style="font-weight:bold">I'm user's email </td>
                            </tr>
                            <tr>
                                <td style="color: #b3b3b3;">Date of birth</td>
                                <td style="font-weight:bold">19 tháng 11, 2000</td>
                            </tr>
                            <tr>
                                <td style="color: #b3b3b3;">Region</td>
                                <td style="font-weight:bold">Việt Nam</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="editProfile"><button class="submit">Edit profile</button></a>
                </div>

            </div>
        </div>

        <%@include file="shared/footer.jsp" %>
    </body>

</html>