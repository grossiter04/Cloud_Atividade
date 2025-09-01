document.addEventListener("DOMContentLoaded", function() {
    const statusElement = document.getElementById("status-message");

    const response = {
        status: "Hello World"
    };

    // Só pra dar um ar da graça
    function typeWriter(element, text, speed = 60) {
        element.textContent = "";
        let i = 0;
        function typing() {
            if (i < text.length) {
                element.textContent += text.charAt(i);
                i++;
                setTimeout(typing, speed);
            }
        }
        typing();
    }

    typeWriter(statusElement, response.status);
});