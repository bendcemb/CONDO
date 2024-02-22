// Function to open the modal
function openModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
}

// Function to close the modal
function closeModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "none";
}


// เมื่อกดปุ่ม Escape (Esc)
document.addEventListener('keydown', function (event) {
    if (event.key === "Escape") {
        closeModal(); // เรียกใช้ฟังก์ชันปิด modal
    }
});

// Function to open the modal
function openModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
}

// Function to close the modal
function closeModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "none";
}