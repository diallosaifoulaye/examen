<%-- 
    Document   : modifier
    Created on : Oct 19, 2018, 5:39:48 PM
    Author     : root
--%>

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
            <form class="form-horizontal" method="post" action="Modification"><br/>
                <legend>Modification</legend>
                <br/>
                <input class="form-control" type="hidden" name="matricule" value="${employe.id}"/>

                <div class="form-group">
                    <label class="col-sm-4 control-label">New first name</label>
                    <div class="col-sm-4">
                        <input class=form-control" type="text" name="FN" value="${employe.name}"/>
                        <span class="help-block">your new first name please</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">New last name</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="LN" value="${employe.description}"/>
                        <span class="help-block">your new last name please</span>
                    </div>
                </div>
                <input class="btn btn-primary btn-success" type="submit" value="enregistrer"/>
        </div>
    </form>
</div>
</body>
</html>
