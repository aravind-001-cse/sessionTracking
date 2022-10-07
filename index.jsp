<%@ page import="java.util.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        Date createTime=new Date(session.getCreationTime());
        Date lastAccessTime=new Date(session.getLastAccessedTime());

        String title="my new website";
        Integer visitCount=new Integer(0);
        String visitCountKey=new String("visitCount");
        String userIDKey=new String("userID");
        String userID=new String("Aravind");

        if(session.isNew()){
            title="This my new Website";
            session.setAttribute(userIDKey,userID);
            session.setAttribute(visitCountKey,visitCount);
        }

        visitCount=(Integer) session.getAttribute(visitCountKey);
        visitCount=visitCount+1;

        userID=(String) session.getAttribute(userIDKey);
        session.setAttribute(visitCountKey,visitCount);
    %>

    <center>
        <h1>session tracking</h1>
    </center>
    <table border="1" align="center">
        <tr>
            <th>Session info</th>
            <th>values</th>
        </tr>
        <tr>
            <td>id</td>
            <td><% out.println(session.getId()); %></td>
        </tr>
        
        <tr>
            <td>createTime</td>
            <td><% out.println(createTime); %></td>
        </tr>
        
        <tr>
            <td>Last time Access</td>
            <td><% out.println(lastAccessTime); %></td>
        </tr>
        
        <tr>
            <td>User Id</td>
            <td> <% out.println(userID); %></td>
        </tr>

        <tr>
            <td>Number Of time Visited</td>
            <td> <% out.println(visitCount); %></td>
        </tr>
    </table>
    
</body>
</html>