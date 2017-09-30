<%-- 
    Document   : index
    Created on : 30-sep-2017, 10:59:23
    Author     : educacionit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="JS/jquery-3.2.1.js"></script>
        <script>
            $(document).ready(function(){
                $("#login").click(function(){
                    usu = $("#usuario").val();
                    pass = $("#pass").val();
                    $.ajax({url:"login?usu="+usu+"&pass="+pass,
                        method:"GET",
                        success: function(data){
                            $("#resp").html(data);
                        }
                    });
                });
            });
        </script>
        
    </head>
    <body>
      
       
        usuario: <input type="text" id="usuario"/><br>
        contraseña: <input type="text" id="pass"/><br>
        <input type="button" id="login" value="guardar"/>
        <div id="resp"></div>
         </body>
</html>
