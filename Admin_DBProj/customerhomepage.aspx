<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>COFFEING</title>
<!-- Add Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body, html {
font-family: 'Montserrat', sans-serif; /* Changed font family */
background-color: #F8F5EC;

margin: 0;
padding: 0;
height: 100%;
}

.container {
max-width: 1000px;
margin: 0 auto;
padding: 20px;
text-align: center;
}

/* Header styles */
header {
background-color: #C2A375;
padding: 5px 15px; /* Adjusted padding */
color: #fff;
display: flex;
justify-content: space-between;
align-items: center;
height: 60px; /* Reduced height */
margin-left: auto;
}

/* Logo styles */
.logo {
font-family: 'Arial', sans-serif; 
font-size: 24px; 
text-transform: uppercase; 
margin-right: auto; 
display: flex; 
align-items: center; 
}

.logo img {
width: 40px; /* Adjust the size of the image */
margin-right: 10px; /* Add some space between image and text */
}

/* Navigation styles */
nav {
display: flex;
align-items: center;

}

nav a {
color: #fff;
text-decoration: none;
margin: 0 10px;
font-size: 16px; /* Adjust font size */
}

nav a:hover {
text-decoration: underline;
}

/* Contact information styles */
.contact-info {
color: #fff;
font-size: 14px;
margin-left: auto; /* Pushes contact info to the left */
}

/* Hero section styles */
.hero {
position: relative;
overflow: hidden;
height: 100vh;
text-align: left; /* Align text to the left */
color: #fff;
}

.hero img {
width: 100%;
height: auto;
position: absolute;
top: 0;
left: 0;
opacity: 0;
transition: opacity 1s ease-in-out;
}

.hero img.active {
opacity: 1;
}

.hero-text {
position: absolute;
top: 50%;
left: 20px;
transform: translateY(-50%);
z-index: 1;
color: #000000;
font-size: 48px; 
max-width: 50%; 
font-family: 'Pacifico', cursive; 
}

.cta-button {
background-color: #3c2a04; 
border: none;
color: #fff;
padding: 10px 20px; 
margin-top: 10px;
text-decoration: none;
font-size: 18px; 
border-radius: 5px;
cursor: pointer;
transition: background-color 0.3s;
}



.cta-button:hover {
background-color: #E4572E; 
}
</style>
</head>
<body>
<!-- Header -->
<header>
<div class="logo">
<span style="font-family: 'Arial', sans-serif;">COFFEING</span> 
</div>
<nav>
<a href="#"><i class="fas fa-search"></i></a> 
<a href="#"><i class="fas fa-bell"></i></a> 
<a href="#">Home</a>
<a href="about.html">About</a> 
<a href="productscustomer.aspx">Shop</a> 
<a href="logincustomer.aspx">Sign In</a> 
<a href="#" class="cta-button">Contact Us</a> 


</nav>
<div class="contact-info"></div>
</header>

<!-- Hero Section -->
<section class="hero">
<div class="hero-text">
<h2 class="hero-title">COFFEING</h2> <!-- Title with creative font -->
<p style="font-size: 28px;">Crafting Moments, One Cup at a Time</p> <!-- Larger font size -->
<!-- "Shop Now" button -->
<a href="productscustomer.aspx" class="cta-button">Shop Now</a> <!-- "Shop Now" button -->
</div>
<asp: img class="active" ImageUrl="C:\Users\Timothy Noel Romares\source\repos\coffeeing_db2proj\Admin_DBProj\Images\—Pngtree—real shot coffee raw coffee_4416894.png" alt="Coffee beans"> <!-- First image -->
<img ImageUrl="~/assests/imgs/espresso-surrounded-by-scattered-coffee-beans-dark-surface.jpg" alt="Coffee Making"> <!-- Second image -->
<img ImageUrl="~/assests/imgs/coffeeshop.jpg" alt="Espresso"> <!-- Third image -->
<!-- Add more images for slideshow as needed -->
</section>

<script>
const slides = document.querySelectorAll('.hero img');
const nextSlide = () => {
const current = document.querySelector('.hero img.active');
current.classList.remove('active');
if (current.nextElementSibling) {
current.nextElementSibling.classList.add('active');
} else {
slides[0].classList.add('active');
}
setTimeout(() => current.classList.remove('active'));
};
setInterval(nextSlide, 5000); // Change slide every 5 seconds
</script>
</body>
</html>