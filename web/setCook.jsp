<%-- 
    Document   : setCook
    Created on : Mar 1, 2015, 7:11:55 PM
    Author     : mmh
--%>

<%@page import="com.nbs.worker.Server"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
        <title>System | Set Branch</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <%
        List<List<Object>> branchList = null;
        if (request.getSession().getAttribute("branch") != null) {
            branchList = (List<List<Object>>) request.getSession().getAttribute("branch");
    %>
    <body style="background: url(assets/img/backgrounds/1.jpg)">
        <form action="index.jsp" onsubmit="setCook(this);
                return false;" method="post">
            <center >
                <br><br><br><br><br>
                <br><br><br><br><br>
                <br><br>
                <table>
                    <tr>
                        <td><label style="color: white;font-size: 16px;">Select Your Branch</label></td>
                        <td>:</td>
                        <td>
                            <select id="branch" name="branch">
                                <option value="0"><label class="control-label">-Select Branch-</label></option>
                                <%for (List b : branchList) {
                                %>
                                <option value="<%=b.get(0)%>"><label class="control-label"><%=b.get(1)%></label></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                    <tr style="height: 10px;"></tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td align="right"><input type="submit" value="Go To System"></td>
                    </tr>
                </table>
            </center>
        </form>
    </body>
    <script type="text/javascript">
        function setCook(cform) {
            var id = cform["branch"].value;
            var bool = new Boolean();
            bool = true;
            if (id === "0") {
                alert("Select the Branch");
                bool = false;
            } else {
                bool = true;
            }
            if (bool) {
                document.forms[cform].submit();
            }
        }
    </script>
    <%
        }
    %>
</html>
