const form = document.querySelector('.contact-form');

form.addEventListener('submit', async (event) => {
    event.preventDefault();

    const formData = {
        name: document.querySelector('#name').value,
        email: document.querySelector('#email').value,
        query: document.querySelector('#query').value,
        'user-type': document.querySelector('#user-type').value,
    };

    try {
        const response = await fetch('http://192.168.0.107:5000/contact', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData),
        });

        const result = await response.json();
        alert(result.message);

    } catch (error) {
        console.error("Error sending contact form data:", error);
        alert('Failed to send your message.');
    }
});
