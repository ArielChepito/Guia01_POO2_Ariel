<%-- 
    Document   : repoGene
    Created on : 06-ago-2016, 9:19:48
    Author     : Ariel
--%>



<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="com.sv.udb.recursos.*"  %>

<% 

        Connection conexion = new Conexion().getConn();
        /*Establecemos la ruta del reporte*/ 
        File reportFile = new File(application.getRealPath("test/reportes/ReporteGeneral.jasper")); 
        /* No enviamos parámetros porque nuestro reporte no los necesita asi que escriba 
        cualquier cadena de texto ya que solo seguiremos el formato del método runReportToPdf*/ 
        Map parameters = new HashMap(); 
        parameters.put("Nombre_parametro", "Valor_Parametro"); 
        /*Enviamos la ruta del reporte, los parámetros y la conexión(objeto Connection)*/ 
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (), parameters, conexion); 
        
        /*Indicamos que la respuesta va a ser en formato PDF*/ 
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length); 
        ServletOutputStream ouputStream = response.getOutputStream(); 
        ouputStream.write(bytes, 0, bytes.length); /*Limpiamos y cerramos flujos de salida*/
        ouputStream.flush(); 
        ouputStream.close();
        
        
       
  %>
  