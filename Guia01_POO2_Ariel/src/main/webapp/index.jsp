<%-- 
    Document   : index
    Created on : 06-ago-2016, 17:23:04
    Author     : Ariel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>GUIA 1 POO2 Ariel</title>
    <meta charset="utf-8">
<!-- Author: Aniuska Maita @aniusk18-->
    <!-- This file has been downloaded from Codepen.io. Enjoy! 
    http://codepen.io/aniusk18/pen/bedWwG-->
    <title>Formulario--codepen</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!-- Google fonts -->
 <link href='https://fonts.googleapis.com/css?family=Lobster|Abel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
    
    
    
        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>

    <div class="container">
  <!--head form-->
  <section>
    <h1>GUIA 1 Ariel</h1>
  </section>
  <!--end head form-->
  <!--body form-->
  <section class="col-md-12 form-horizontal">
      
    <form class="" method="post" action="scripts/reporte1.jsp"target="_blank">
      <div class="form-group barra">
        <label for="inputEmail3" class="control-label">Visitas por unidad Organizativa. Elige una unidad</label>
         <br>              
          
          
          <select name="select" class="form-control" id="select">
           <jsp:useBean id="beanUnidadCtrl" class="com.sv.udb.controlador.UnidadCtrl" scope="page"/>
                                        <c:forEach items="${beanUnidadCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiUnid eq cmbUnidad}">
                                                    <option name="codi_unid" value="${fila.codiUnid}" selected="">${fila.nombUnid}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_unid" value="${fila.codiUnid}">${fila.nombUnid}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
<br>
        <div class="col-md-12">
          <button type="submit" class="btn  center-block">Imprimir Reporte</button>
        </div>
      </div>
    </form>
         <form class="" method="post" action="scripts/reporte2.jsp" target="_blank">                                 
      <div class="form-group barra">
        <label for="inputPassword3" class="control-label">Visitas por persona. Elige una persona!</label>
         <br>  
     
         
          <select name="select2" class="form-control" id="select2">
          <jsp:useBean id="beanPersonaCtrl" class="com.sv.udb.controlador.PersonaCtrl" scope="page"/>
                                        <c:forEach items="${beanPersonaCtrl.consTodo()}" var="fila">
                                            <c:choose>
                                                <c:when test="${fila.codiPers eq cmbPersona}">
                                                    <option name="codi_pers" value="${fila.codiPers}" selected="">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:when>
                                                <c:otherwise>
                                            <option name="codi_pers" value="${fila.codiPers}">${fila.nombPers} ${fila.apelPers} - ${fila.duiPers}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        </select>
<br>
        <div class="col-md-12">
          <button type="submit" class="btn  center-block">Imprimir Reporte</button>
        </div>
        
      </div>
         </form>
    <form class="" method="post" action="scripts/reporte3.jsp" target="_blank">  
      <div class="form-group barra">
        <label for="inputPassword3" class="control-label">Fecha inicio </label>       

        <input type="date"class="form-control" name="date1" id="date1">
        
        
		<br>
        <label for="inputPassword3" class="control-label">Fecha fin </label>       

        <input type="date"class="form-control" name="date2" id="date2">
        
        
        <br>
        <div class="col-md-12">
          <button type="submit" class="btn  center-block">Imprimir Reporte</button>
        </div>
      </div>
    
    </form>
  </section>
  <!--end body form-->
</div>
    
    
    
    
    
  </body>
</html>
