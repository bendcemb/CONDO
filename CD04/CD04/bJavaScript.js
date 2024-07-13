
// เรียกใช้ Chart.js
var ctx = document.getElementById('myChart').getContext('2d');
var ctxline = document.getElementById('myChartLine').getContext('2d');
var ctxpie = document.getElementById('myChartpie').getContext('2d');

// กำหนดข้อมูลสำหรับกราฟ
var data = {
    labels: ['Label 1', 'Label 2', 'Label 3', 'Label 4'],
    datasets: [{
        label: 'My Dataset',
        data: [10, 20, 15, 5],
        backgroundColor: 'rgba(75, 192, 192, 0.2)', // สีพื้นหลังกราฟ
        borderColor: 'rgba(75, 192, 192, 1)', // สีเส้นกราฟ
        borderWidth: 1
    }]
};

var datapie = {
    labels: ['Label 1', 'Label 2', 'Label 3', 'Label 4', 'label 5x'],
    datasets: [{
        label: 'My Dataset',
        data: [10, 20, 15, 5, 40],
        backgroundColor: 'rgba(75, 192, 192, 0.2)', // สีพื้นหลังกราฟ
        borderColor: 'rgba(76, 193, 193, 2)', // สีเส้นกราฟ
        borderWidth: 2

    }]
};

// กำหนดตัวแปร options
var options = {
    scales: {
        y: {
            beginAtZero: true
        }
    }
};

var optionspie = {
    responsive: true, // ทำให้กราฟปรับขนาดตามขนาดหน้าจอ
    maintainAspectRatio: false, // ไม่รักษาอัตราส่วน
    scales: {
        y: {
            beginAtZero: true
        }

    },
    plugins: {
        zoom: {
            zoom: {
                wheel: {
                    enabled: true,
                },
                pinch: {
                    enabled: true
                },
                mode: 'xy'
            }
        }
    }
};

// สร้างกราฟ
var myChart = new Chart(ctx, {
    type: 'bar', // เลือกประเภทของกราฟ (bar, line, pie, etc.)
    data: data,
    options: options
});

var myChartLine = new Chart(ctxline, {
    type: 'line', // เลือกประเภทของกราฟ (bar, line, pie, etc.)
    data: data,
    options: options
});

var myChartpie = new Chart(ctxpie, {
    type: 'pie', // เลือกประเภทของกราฟ (bar, line, pie, etc.)
    data: datapie,
    options: optionspie
});

//---------------------------------------------------------------------------------------------------

