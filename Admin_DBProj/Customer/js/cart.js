function updateCart() {
        const cartItems = document.querySelectorAll('.cart-item');
    let subtotal = 0;

    cartItems.forEach(item => {
        const quantity = item.querySelector('.quantity-input').value;
            const price = parseFloat(item.querySelector('.cart-item-price').innerText.replace('$', ''));
    subtotal += quantity * price;
});

        const tax = subtotal * 0.05;
        const shipping = 15.00;
        const grandTotal = subtotal + tax + shipping;

document.getElementById('cart-subtotal').innerText = subtotal.toFixed(2);
document.getElementById('cart-tax').innerText = tax.toFixed(2);
document.getElementById('cart-shipping').innerText = shipping.toFixed(2);
document.getElementById('cart-total').innerText = grandTotal.toFixed(2);
}

function removeFromCart(productName) {
    const cartItem = document.querySelector(`.quantity-input[data-product-name="${productName}"]`).closest('.cart-item');
    cartItem.remove();
    updateCart();
}