<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>



    <head>
        </link> 
        <script src="https://kit.fontawesome.com/059eb35bb8.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../../CSS/style.css"</link>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <script src="../../JS/index.js"></script>
        <div>
            <button id="darkmodebutton" onclick="darkmode()">LIGHT</button>
        </div>
                
        <div class="row">

            <div class="containerFormulario border">
                <h1>Adicionar Cliente</h1>
                <form method="POST" action="adicionar_cliente.jsp"> 
                    <label for="nome">Nome</label><br>
                    <input type="text" name="nome"/><br

                        <label for="email">Email</label><br>
                    <input type="email" name="email"/><br

                        <label for="telefone">Telefone</label><br>
                    <input type="text" name="telefone"/><br>

                    <button class="button" type="submit">Enviar</button><br>
                    <div class='rowStartLeft'> <a href='../../index.jsp'><i class="fas fa-arrow-left"> Voltar</i></a></div>


                </form>
            </div>
        </div>
    </body>
</html>
