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