<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.vacunasACA" %>
<%@page import="com.emergentes.modelo.gestor" %>
<%
    if(session.getAttribute("agenda") == null){
        gestor objeto1 = new gestor();
        
        objeto1.insertarP(new vacunasACA(1,"Brunito Diaz",25,140,"si"));
        objeto1.insertarP(new vacunasACA(1,"Juancito Pinto",30,152,"no"));
        objeto1.insertarP(new vacunasACA (3,"angela  catacora",20,150,"no"));

        
        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - Examen </title>
    </head>
    <body>
        <table align="center" border="1">
            <tr>
                <th WIDTH="500" > <br><h1>PRIMER PARCIAL TEM-742</h1>
                    <h3>Nombre: Angela Catacora Arteaga</h3>
                    <h3>Carnet: 12482847 LP</h3><br>
                </th>
            </tr>
        </table>

        
        <h1 align="center">Registro de Vacunas</h1>
         <p align="center"><a href="controller?op=nuevo" > Nuevo</a></p>
        <table border="3" CELLPADDING=7 CELLSPACING=7 align="center"  >
            <tr>
                <th width="80" >Id</th>   
                <th width="150" >Nombre</th>  
                <th width="80" >Peso</th>
                <th width="80" >Talla</th>
                <th width="80" >Vacuna</th>
                <th width="80" ></th>  
                <th width="80" ></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td width="80" >${item.id}</td>
                    <td width="150" >${item.nombre}</td>
                    <td width="80" >${item.peso}</td>
                    <td width="80" >${item.talla}</td>
                    <td width="80" >${item.vacuna}</td>
                    <td width="80" ><a href="controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td width="80" ><a href="controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>  
            
        </table>
    </body>
</html>