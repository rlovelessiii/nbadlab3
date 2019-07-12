<%-- 
    Document   : signup
    Created on : Jul 11, 2019, 1:47:02 PM
    Author     : bobbysmedley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-Up!</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>Registration Form</h1>
        
        <form method="post" id="signupForm" action="/Lab_3/membership?action=signup">
            
            <label for="name">Name:</label>
            <input type="text" name="name">
            
            <br>
            
            <label for="username">Username:</label>
            <input type="text" name="username">
            
            <br>
            
            <label for="password">Password:</label>
            <input type="password" name="password">
            
            <br>
            
            <label for="address">Address:</label>
            <input type="text" name="address">
            
            <br>
            
            <label for="country">Country:</label>
            <select name="country">
                <option value="">Please select</option>
                <option value="United States">United States</option>
                <option value="Canada">Canada</option>
            </select>
            
            <br>
            
            <label for="zip">Zip Code:</label>
            <input type="number" name="zip">
            
            <br>
            
            <label for="email">Email:</label>
            <input type="email" name="email">
            
            <br>
            
            <label for="sex">Sex:</label>
            <input type="radio" value="male" name="sex">Male
            <input type="radio" value="female" name="sex">Female
            
            <br>
            
            <div>
                <label>Language:</label>
                <input type="checkbox" value="english" name="english">English
                <input type="checkbox" value="french" name="french">French
                <input type="checkbox" value="german" name="german">German
            </div>
            
            <br>
            
            <label for="about">About:</label>
            <textarea rows="3" cols="25" name="about"></textarea>
            
            <br>
            
            <button type="submit" form="signupForm">Submit</button>
            
        </form>
    </body>
</html>
