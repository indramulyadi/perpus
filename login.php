<!DOCTYPE HTML>
<html>
<head>
<title>Login Sistem</title>
<style type="text/css">
    padding-left: 625px;
}
body{
    
    margin: 0;
    padding: 0;
}
#log_cont{
    max-width: 340px;
    margin:5px auto;
    
    box-shadow: 0 0 10px #aaa;
}
#log_cont h3{
    text-align: center;
    padding: 20px 10px;
    background-color: #2b2f3e;
    color: #b0b0bc;
}
fieldset{
    margin: 0;
    border: none;
}
form{
    padding: 0;
    margin: 0;
}
input[type='text'],
input[type="email"]{
    width: 92%;
    padding: 0.77em;
    margin-top: 1.2em;
    color: #888;
}
input[type='password'],
input[type="email"]{
    width: 92%;
    padding: 0.77em;
    margin-top: 1.2em;
    color: #888;
}
input[type="submit"]{
    width: 100%;
    padding: 1.4em;
    margin: 1.5em 0;
    color: #888;
    background-color:#00cdb1 ;
    border:none;
    color:#eee;
    border-bottom: 4px solid transparent;
}
input[type="submit"]:hover{
    opacity: 0.8;
    border-color: #00adb1;
}
form p{
    text-align: center;
    color: #888;
    width: 30px;
    margin: 10px auto 0;
    background: #f9f9f9;
    position: relative;
    bottom: 20px;
}
.border-p{
    border-top: 1px solid #888;
    margin: 10px 10px;
}
button{
    background-color: #3b5998;
    width: 100%;
    padding: 1.4em;
    margin-bottom: 1em;
    color: #888; ;
    border:none;
    color:#eee;
    border-bottom: 4px solid transparent;
    box-shadow: 0 0 10px #aaa;
}

button:hover{
    opacity: 0.9;
    border-color: #3b3998;
}
.element {
    padding-left: 150px;
    padding-top: 15px;
}
.text-center{
    text-align: center;
}
</style>
</head>
<body>
<body>
    <header id="header" class="head">
    <div class="col-md-12 text-center">
    <img src="images/logo1.png" alt="STT-PLN" style="width:100px;height:100px;" >
    </div>

    <div id="log_cont">
    <form method="post" action="cek-login.php" >
    
        <h3>LOGIN</h3>
        <fieldset>
    	   <form action="">
        	    <td>Username</td><br><input type="text" name="user" ></td>
        	    <td>Password</td><br><input type="password" name="pass"  ></td>
                <br>
                <br>

                 <button type="submit" name="log">Login</td>
                <div class="border-p"></div>
        </fieldset>
      </form>
    </div>


</body>
</html>


