<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>


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
        <div class="rowSucesso">
            <div class="ContainerSucesso border">

<%
    Produto produto = new Produto();
    DAOProduto ProdutoDAO = new DAOProduto();
    
    try {
        
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String quantidade = request.getParameter("quantidade");
 
        
        produto.setId(Integer.parseInt(id));
        produto.setNome(nome);
        produto.setQuantidade(Integer.parseInt(quantidade));
        ProdutoDAO.atualizarProduto(produto);
        
        
        out.print("Produto "+ request.getParameter("nome") +" Editado com sucesso");
        out.print("<meta http-equiv='refresh' content='3, url= ../ConsultarProdutoPage/consultar_produto.jsp'/>");
        
    } catch (Exception erro) {
        throw new RuntimeException("Erro ao editar produto: " + erro);
        
    }
    
%>



            </div>
        </div>
    </body>

</html>