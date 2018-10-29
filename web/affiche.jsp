<%-- 
    Document   : affiche
    Created on : Oct 17, 2018, 12:20:37 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
        <br/><br/>
        <div class="bol-sm-ofset-2 form-group">
            <div class="col-sm-10">
                <div align="center">
                    <!--form method="post" action="ajoutNew">
                        Matricule <input type="text" name="newId"/>
                        Fist Name <input type text="text" name="newP"/>  
                        Last Name <input type text="text" name="newN"/>  
                        <input class="btn btn-primary" type="submit" value="Save"/>    
            
                    </form-->    
                </div> </div> </div>
        <!--section class="col-sm-8 table-responsive"-->
            <table border="" cellspacing="0" align="center" class="table table-bordered table-striped table-condensed"><br/>
                <caption>
                    <h4>Mr. Patrick student's</h4>
                </caption>
                <thead>
                    <tr>
                        <th>Register</th>
                        <th >First Name</th>
                        <th >Last Name</th>
                        <th colspan="2">Actions</th>
                    </tr>
                </thead>
                <c:forEach var="employe" items="${thole}">
                    <tbody>
                        <tr>
                            <td><c:out value="${employe.id}"/></td>
                            <td><c:out value="${employe.name}"/></td>
                            <td> <c:out value="${employe.description}"/></td>
                            <td>
                                <form method="post" action="BeforeModifier">
                                    <div class="bol-sm-ofset-2 form-group">
                                        <div class="col-sm-offset-0" >
                                            <input  type="hidden" name="matricule" value="${employe.id}"/>
                                            <input type="hidden" name="FN" value="${employe.name}"/>
                                            <input type="hidden" name="LN" value="${employe.description}"/>
                                            <input class="btn btn-primary success" type="submit" value="modifier">

                                        </div>
                                    </div>

                                </form> 
                            </td>    
                            <td>    

                                <form method="get" action="Supprimer">    
                                    <div class="bol-sm-ofset-4 form-group">
                                        <div class="col-sm-offset-0">
                                            <input  type="hidden" name="matricule" value="${employe.id}"/>
                                            <input type="hidden" name="FN" value="${employe.name}"/>
                                            <input type="hidden" name="LN" value="${employe.description}"/>
                                            <input class="btn btn-primary alert-danger" type="submit" value="supprimer">

                                        </div>
                                    </div>
                                </form>
                            </td>

                        </tr>
                    </tbody>
                </c:forEach>

            </table><br/><br/>
        <!--/section-->

    </body>
</html>
