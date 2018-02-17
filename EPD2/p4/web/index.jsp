<%-- 
    Document   : index
    Created on : 17-feb-2018, 20:28:55
    Author     : Grupo7 IT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>p4</title>
        <style>
            .main-tittle{
                text-align: center;
            }
            .container-product{
                display: table;
            }
            .container-content{
                display: table-row;
            }
            .product-box{
                display: table-cell;
                width: 33.3%;          
            }
            .product-box img{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <h1 class="main-tittle">Amazon Web Static</h1>
        <div class="container-product">
            <div class="container-content">
                <jsp:include page="raspberry.html" flush="true" />
                <jsp:include page="auricular.html" flush="true" />
                <jsp:include page="tvbox.html" flush="true" />
            </div>
        </div>
    </body>
</html>
