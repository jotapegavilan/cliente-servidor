<%-- 
    Document   : recepcion
    Created on : 21-ago-2018, 14:52:57
    Author     : Jotape
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos usuario</title>
    </head>
    <body>
        <h1>Datos del usuario</h1>
        <%
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String rut = request.getParameter("rut");
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("clave");
            if(nombre.length()>0 && apellido.length()>0 && rut.length()>0
                    && usuario.length()>0 && clave.length()>0){
            %>
            <p>Nombre completo: <%=nombre+" "+apellido %></p>            
            <p>Rut : <%=rut %></p>
            <p>Usuario : <%=usuario %></p>
            <p>Clave : <%=clave %></p>            
            <% 
            }if(nombre.length()<1){
            %>
            <p>El nombre esta nulo. Vuelve a intentarlo.</p>
            <% 
            }if(apellido.length()<1){
            %>
            <p>El apellido esta nulo. Vuelve a intentarlo.</p>
            <% 
            }if(rut.length()<1){
            %>
            <p>El rut esta nulo. Vuelve a intentarlo.</p>
            <% 
            }if(usuario.length()<1){
            %>
            <p>El usuario esta nulo. Vuelve a intentarlo.</p>
            <% 
            }if(clave.length()<1){
            %>
            <p>La clave esta nula. Vuelve a intentarlo.</p>
            <%
                }
                out.println("<a href='index.html'>Volver al formulario.</a>");
                %>
    </body>
</html>
