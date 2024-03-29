<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.categoria"%>
<%
    List<categoria> lista =(List<categoria>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Categorias</h1>
        <p>
            <a href="MainController?op=nuevo">Nuevo</a>
        </p>
        <table border="1">
            <tr>
                <th>Id</th> 
                <th>Categoria</th>
                <th></th>
            </tr>
            <c:forEach var ="item" items="${lista}">
                <tr>
                    <td>${item.idC}</td>
                    <td>${item.categoriaC}</td>
                    <td><a href="MainController?op=editar&id=${item.idC}" onclick="return(confirm('esta seguro?'))">
                            Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.idC}" onclick="return(confirm('esta seguro?'))">
                            Eliminar</a></td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>
