function confirmOrder() {
    // Get form values
    var fullName = document.getElementById('fullName').value;
    var address = document.getElementById('address').value;
    var city = document.getElementById('city').value;
    var zipCode = document.getElementById('zipCode').value;
    var country = document.getElementById('country').value;

    // Validate form data (you can add more validation as needed)

    // Create order object with details
    var order = {
        productName: 'Coffee Blend',
        price: 10.00,
        quantity: 2,
        subtotal: 20.00,
        shippingAddress: {
            fullName: fullName,
            address: address,
            city: city,
            zipCode: zipCode,
            country: country
        }
    };

    // Perform further actions (e.g., submit order to backend)
    console.log('Order details:', order);

    // Display confirmation message and redirect
    alert('Order confirmed! Redirecting to confirmation page...');
    window.location.href = 'confirmation_page.html'; // Replace with your confirmation page URL
}