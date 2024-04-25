<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>COFFEING LOGIN</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body {
    background-color: #F7EFCA;
    background-image: url("assests/imgs/few-coffee-beans-on-white_5628737.png"); /* Adjust the path */
    background-size: cover;
    background-position: center;
}

.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}

.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Quicksand',sans-serif;
    color: #080710;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

input[type="text"],
input[type="password"] {
    display: block;
    width: 100%;
    border: none;
    border-bottom: 2px solid black; /* Use a border-bottom to create the line effect */
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
    padding: 5px 10px; /* Adjust padding for better appearance */
    box-sizing: border-box; /* Include padding and border in the width calculation */

}

.links 
{
  position: relative;
  width: 100%;
  display: flex;
  justify-content: space-between;
}

.links a 
{
  color: #fff;
  text-decoration: none;
}
.links a:nth-child(2)
{
  color: #a86b38;
  font-weight: 600;
}

label {
    display: block;
    margin-top: 20px; /* Adjust margin-top for spacing */
    font-size: 16px;
    font-weight: 500;
}

::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .go {
    color: #080710;
    margin-left: 25px;
}
.social .fb{
    color: #080710;
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}

    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form>
        <h3>LOGIN HERE</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password">

         <div class="links"> <a href="#">Forgot Password</a> <a href="#">Signup</a></div>

        <button>Log In</button>
       
    </form>
</body>
</html>
