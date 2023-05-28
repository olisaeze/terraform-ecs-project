const fileInput = document.getElementById('file');
const nameInput = document.getElementById('name');
const form = document.querySelector('form');

form.addEventListener('submit', (e) => {
    // Prevent form submission
    e.preventDefault();

    // Check if file input is empty
    if (!fileInput.value) {
        alert('Please select a file to upload.');
        return;
    }

    // Check if file name input is empty
    if (!nameInput.value) {
        alert('Please enter a name for the file.');
        return;
    }

    // Submit form
    form.submit();
});