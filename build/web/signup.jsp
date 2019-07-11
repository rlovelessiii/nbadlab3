<%-- 
    Document   : signup
    Created on : Jul 11, 2019, 1:47:02 PM
    Author     : bobbysmedley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="lab2css.css">
    </head>
    <body>
        <h1>Registration Form</h1>
        <form method="post" action="/Lab_3/Membership?action=signup">
            <span class="f3">Name:</span><input type="text" class="f1" name="name"><br>
            <span class="f3">Username:</span><input type="text" class="f1" name="username"><br>
            <span class="f3">Password:</span><input type="password" class="f1" name="password"><br>
            <span class="f3">Address:</span><input type="text" class="f1" name="address"><br>
            <span class="f3">Country:</span><select name="country" class="f1">
                        <option value="unitedstates">United states</option>
                        <option value="canada">Canada</option>
                    </select>
            <br>
            <span class="f3">ZIP Code:</span><input type="text" class="f1" name="zip"><br>
            <span class="f3">Email:</span><input type="text" class="f1" name="email"><br>
            <span class="f3">Sex:</span><input type="radio" name="male" class="f2" value="male">Male
            <input type ="radio" name="female" class="f2" value="female">Female<br>
            <span class="f3">Language:</span><input type="checkbox" class="f2" name="english" value="english"> English
            <input type="checkbox" name="french" class="f2" value="french"> French
            <input type="checkbox" name="german"class="f2"  value="german"> German<br>
            <span class="f3">About:</span><textarea rows="4" cols="50" class="f1" name="about"></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
