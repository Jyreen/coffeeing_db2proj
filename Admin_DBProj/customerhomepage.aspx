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
}

/* Logo styles */
.logo {
font-family: 'Arial', sans-serif; /* Changed font family */
font-size: 24px; /* Adjusted font size */
text-transform: uppercase; /* All caps */
margin-right: auto; /* Pushes navigation to the right */
display: flex; /* Added to align image and text */
align-items: center; /* Added to align image and text */
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
left: 20px; /* Adjusted left position */
transform: translateY(-50%);
z-index: 1;
color: #fff;
font-size: 48px; /* Larger font size */
max-width: 50%; /* Added maximum width */
font-family: 'Pacifico', cursive; /* Creative font style */
}

/* Call to action button styles */
.cta-button {
background-color: #3c2a04; /* Custom color */
border: none;
color: #fff;
padding: 10px 20px; /* Adjusted padding */
margin-top: 10px; /* Adjusted margin top */
text-decoration: none;
font-size: 18px; /* Adjusted font size */
border-radius: 5px;
cursor: pointer;
transition: background-color 0.3s;
}



.cta-button:hover {
background-color: #E4572E; /* Darker shade on hover */
}
</style>
</head>
<body>
<!-- Header -->
<header>
<div class="logo">
<asp:Image ID="Image3" runat="server" CssClass="center" ImageUrl="~/assests/imgs/dino-costume.gif" width="60" height="60" />
<span style="font-family: 'Arial', sans-serif;">COFFEING</span> <!-- Changed font -->
</div>
<nav>
<a href="#"><i class="fas fa-search"></i></a> <!-- Magnifying glass icon -->
<a href="#"><i class="fas fa-bell"></i></a> <!-- Notification icon -->
<a href="#">Home</a>
<a href="about.html">About</a> <!-- Link to the about page -->
<a href="shop.html">Shop</a> <!-- Link to your shop page -->
<a href="#">Pages</a>
<a href="#">Blog</a>
<a href="login.html">Sign In</a> <!-- Link to your login page -->
<a href="#" class="cta-button">Contact Us</a> <!-- Orange "Contact Us" button -->


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
<asp: img class="active" ImageUrl="~/assests/imgs/coffee-beans-with-props-making-coffee.jpg" alt="Coffee Beans with Cup"> <!-- First image -->
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