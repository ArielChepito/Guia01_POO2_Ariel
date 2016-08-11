<%-- 
    Document   : formulario
    Created on : 06-ago-2016, 9:49:58
    Author     : Ariel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" method="post" action="repoCodi.jsp">
      <table width="487" align="center">
        <tr>
          <td colspan="2" align="center"><strong>REPORTES PDF CON PARAMETROS EN JSP </strong></td>
        </tr>
        <tr>
          <td width="168">INGRESE CODIGO:</td>
          <td width="415"><label for="txtidunidad"></label>
          <input type="text" name="txtidunidad" id="txtidunidad"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Generar Reporte"></td>
        </tr>
      </table>
    </form>
    </body>
</html>
