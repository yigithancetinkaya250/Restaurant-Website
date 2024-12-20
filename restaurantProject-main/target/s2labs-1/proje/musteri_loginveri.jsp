<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="proje.Kayit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400' rel='stylesheet' type='text/css'>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
            <title>JSP Page</title>
            <style>
                * {
                    padding: 0;
                    margin: 0;
                }

                body {
                    color: #515151;
                    font-family: 'Open Sans', sans-serif;
                }

                #bg img {
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    z-index: -2;
                    top: 0;
                }

                #overlay {
                    position:absolute;
                    width: 100%;
                    height: 100%;
                    z-index: -1;
                    top: 0;
                    background-color: gray;
                    opacity:0.5;
                    
                    background-image: url('resim/background2.jpg');
                    background-size: cover;
                }

                #container {
                    position: relative;
                    max-width: 300px;
                    margin: 200px auto;
                    background: #fff;
                    padding: 30px 20px;
                    text-align: center;
                    border-radius: 3%;
                    -webkit-box-shadow: -7px 0px 0px -2px rgba(71,71,71,0.2);
                    -moz-box-shadow: -7px 0px 0px -2px rgba(71,71,71,0.2);
                    box-shadow: -7px 0px 0px -2px rgba(71,71,71,0.2);
                }

                h1 {
                    margin: 30px 0 20px 0;
                    font-weight: normal;
                }

                p {
                    font-size: 0.8em;
                    margin-bottom: 25px;
                }

                button {
                    width: 100%;
                    background: #73c242;
                    border: transparent;
                    border-radius: 3%;
                    padding: 10px;
                    text-transform: uppercase;
                    color: white;
                    letter-spacing: 1px;

                    cursor: pointer;
                    transititon: background 0.3s;
                }

                button:hover {
                    background: #5f9e2f;
                }

                button:active {
                    background: #4a7d24;
                }

                #circle {
                    position: absolute;
                    width: 80px;
                    height: 80px;
                    background: #73c242;
                    border-radius: 50%;
                    text-align: center;
                    top: -40px;
                    left: 50%;
                    transform: translateX(-50%);
                }

                i {
                    color: white;
                    margin: 25px;
                    font-size: 30px;
                    top: 50%;
                    transofrm: translateY(-50%);
                }

                #main{
                    display: table;
                    width: 100%;
                    height: 100vh;
                    text-align: center;
                    background: white;
                    
                    overflow: hidden;
                }

                .fof{
                    font-family: 'Lato', sans-serif;
                    color: #888;
                    display: table-cell;
                    vertical-align: top;
                    text-align: center;
                    height: 100vh;
                    margin: 0;
                    transform: translateY(15vh);

                }

                .fof h1{
                    font-size: 50px;
                    display: inline-block;
                    padding-right: 12px;
                    animation: type .5s alternate infinite;
                }

                .fof a{
                    text-decoration: none;
                    font-size: 16px;
                    line-height: 20px;
                    color: darkgrey;
                }

                .fof a:hover
                {
                    color: #ffc107;
                }

                @keyframes type{
                    from{
                        box-shadow: inset -3px 0px 0px #888;
                    }
                    to{
                        box-shadow: inset -3px 0px 0px transparent;
                    }
                }

            </style>
            </head>
            <body>
                <%
                    String isimgiris = request.getParameter("isim");
                    String emailgiris = request.getParameter("email");
                    String sifregiris = request.getParameter("sifre");

                    session.setAttribute("isimses", isimgiris);
                    session.setAttribute("emailses", emailgiris);
                    Kayit is = new Kayit();

                    is.loginkontrol(isimgiris, emailgiris, sifregiris);

                    if (!is.isLogintest()) {
                %>
            <div id="overlay"></div>  
            <div id="container" id="timer">
                <div id="circle">
                    <i class="fa fa-check"></i> 
                </div> 

                <h1>Giriş Başarılı!</h1>
                <p>Giriş başarıyla yapıldı</p>

                <button onclick="window.location.href = 'musteripanel.jsp'">Rezervasyon Yap</button>

            </div>
            <%
            } else {
            %>

            <div id="main">
                <div class="fof">
                    <h1>Başarısız...</h1>
                    <br>
                    <a href='musterilogin.jsp'>Eksik veya yanlış bilgi girdiniz, lütfen tekrar giriş yapınız</a>
                </div>
            </div>

            <%
                }
            %>
            </body>
            </html>
