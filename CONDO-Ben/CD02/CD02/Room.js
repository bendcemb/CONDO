var isModalCustOpen = false; // เก็บสถานะของ modalCust

// Function to open the modal
function openModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
}


// Function to open the modalCust
function openModalCust() {
    var modal2 = document.getElementById("myModalCust");
    modal2.style.display = "block";
    isModalCustOpen = true; // เปิด modalCust ให้ตั้งค่าเป็น true
}

// Function to close the modalCust
function closeModalCust() {
    var modal2 = document.getElementById("myModalCust");
    // ตรวจสอบว่า modal2 กำลังแสดงอยู่หรือไม่
    if (modal2.style.display === "block") {
        modal2.style.display = "none"; // ปิด modal2
        isModalCustOpen = false; // ปรับค่าสถานะเป็นปิด
    }
}

// Function to close the modal
function closeModal() {
    var modal = document.getElementById("myModal");
    // ตรวจสอบว่า modal กำลังแสดงอยู่หรือไม่
    if (modal.style.display === "block" && !isModalCustOpen) {
        modal.style.display = "none"; // ปิด modal
        isModalCustOpen = false; // ปรับค่าสถานะเป็นปิด
    }
}



// Event listener for keydown event
document.addEventListener('keydown', function (event) {
    if (event.key === "Escape") {
        if (isModalCustOpen) {
            closeModalCust(); // เรียกใช้ฟังก์ชันปิด modalCust
        } else {
            closeModal(); // เรียกใช้ฟังก์ชันปิด modal
        }
    }
});
