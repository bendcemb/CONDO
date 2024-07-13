
const cards = document.querySelectorAll('.xcard');

cards.forEach(card => {
    const gif = card.querySelector('.xgif');
    const png = card.querySelector('.xpng');
    let originalBackgroundColor = card.style.backgroundColor; // เก็บสีพื้นหลังเดิม

    card.addEventListener('mouseover', () => {
        gif.classList.remove('d-none');
        png.classList.add('d-none');
        card.style.backgroundColor = 'palevioletred'; // เพิ่มสีพื้นหลังเมื่อเมาส์เข้ามา
        //card.style.border = 'dashed';
    });

    card.addEventListener('mouseout', () => {
        gif.classList.add('d-none');
        png.classList.remove('d-none');
        card.style.backgroundColor = originalBackgroundColor; // เปลี่ยนสีพื้นหลังกลับเป็นสีเดิม
        //card.style.border = '';
    });
});
