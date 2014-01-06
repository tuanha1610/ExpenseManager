<%-- 
    Document   : index
    Created on : Dec 26, 2013, 7:14:16 PM
    Author     : h10t93
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ViewExpenseServlet?action=login" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="user"/></td>
                </tr>
                <tr>
                    <td>password:</td>
                    <td><input type="password" name="pass"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
