import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

export { application }

document.addEventListener("DOMContentLoaded", function () {
    setTimeout(function () {
        document.querySelectorAll('.message').forEach(function (flash) {
            flash.style.opacity = '0';
            setTimeout(function () {
                flash.style.display = 'none';
            }, 3000); // время анимации исчезновения, можно изменить по вашему усмотрению
        });
    }, 3000); // время задержки перед исчезновением флеш-сообщения (в данном случае 3 секунды)
});
