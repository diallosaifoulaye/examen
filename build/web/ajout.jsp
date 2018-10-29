<%-- 
    Document   : ajout
    Created on : Oct 16, 2018, 11:53:54 AM
    Author     : root
--%>
<%@include file="menu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="bootstrap.min.css">
         <link rel="stylesheet" href="bootstrap.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" align="center">
            
            <form class="form-horizontal" method="post" action="Add">
                <legend>Add new student</legend>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Register</label>
                    <div class="col-sm-4">
                        <input class="form-control"  type="text" name="id"/>
                        <span class="help-block">your register please</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">First Name</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="name"/>
                         <span class="help-block">your first name please</span>
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-sm-4 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="description"/>
                        <span class="help-block">your last name please</span>
                    </div>
                </div>
                          
            <input class="btn btn-primary" type="submit" value="Enregistrer">
            
        </form>
        ${message}
    </body>
</html>
