<jsp:useBean id="user" scope="request" type="com.dags.searchforusersimplilearn.domain.User"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>User Information</title>

    <style>
        strong {text-align: center;}
        head {text-align: center;}
        div {text-align: center; font-size: large}
        br {text-align: center;}
        body {text-align: center;}
        span, input {margin: 5px;}
        button{display:block;}
    </style>


    <form method="post" action="/update">
        <body>
            <table class ="table">
                <thead>
                    <tr>
                        <th>Current Username: ${user.getUsername()}</th>
                        <th>Current Password: ${user.getPassword()}</th>'
                        <th>Current Description: ${user.getDescription()}</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>
                            <label>
                                <input type="text" name="username" minlength="3">
                            </label>
                        </td>
                        <td>
                            <label>
                               <input type="text" name="password" minlength="3">
                            </label>
                        </td>
                        <td>
                            <label>
                                <input type="text" name="description" minlength="3">
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
            <button  class="btn btn-primary" onclick="window.location='/'" >Back to index</button>
            <button  type="submit" class="btn btn-success">Update</button>
        </body>
    </form>
</html>