<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CD02.Index" %>

<link href="Content/bootstrap.min.css" rel="stylesheet" />

<div class="container mt-5">
    <style>
        .xcard {
            margin: 4px 6px 4px 6px;
            border-radius: 20px 20px;
            transition: background-color 1s; /* เพิ่มเอฟเฟกต์การเปลี่ยนสี */
        }

            .xcard:hover {
                background-color: palevioletred;
                /*border:dashed*/
            }


            .xcard img {
                width: 100%;
                height: auto;
            }

        @media (max-width: 768px) { /* ปรับขนาดภาพเมื่อจอเล็กลงมา */
            .xcard img {
                width: auto;
                height: auto;
            }
        }

        .hidden-content {
            display: none; /* ซ่อนเนื้อหา */
        }

        .visible-space {
            height: 128px; /* ปรับขนาดพื้นที่ว่างตามที่ต้องการ */
            /* สีพื้นหลังของพื้นที่ว่าง สามารถเปลี่ยนแปลงตามที่ต้องการ */
            background-color: transparent;
        }
    </style>


    <h5>ระบบบริหารอาคารชุด</h5>
    <b>นิติบุคคลอาคารชุด : xxxxxxxxxxx</b>

    <div class="d-flex justify-content-center">

        <%--file--%>
        <div class="col-3">
            <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">
                <%--1--%>
                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard shadow" style="background-color: lightskyblue;">
                            <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                            <img class="xpng" src="img\gif\building_dl.png" alt="Rooms" />
                            <div>
                                <label>ทะเบียนห้อง</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue;">
                            <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                            <img class="xpng" src="img/gif/customer_dl.png" alt="customer" />
                            <div>
                                <label>เจ้าของ</label>
                            </div>

                        </div>
                    </div>
                </a>

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue">
                            <img class="d-none xgif" src="img/gif/income_dl.gif" alt="Income" />
                            <img class="xpng" src="img/gif/income_dl.png" alt="Rooms" />
                            <div>
                                <label>ประเภทรายรับ</label>
                            </div>
                        </div>
                    </div>
                </a>



                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue;">
                            <img class="d-none xgif" src="img/gif/repair-tools_dl.gif" alt="customer" />
                            <img class="xpng" src="img/gif/repair-tools_dl.png" alt="customer" />
                            <div>
                                <label>ซ่อมบำรุง</label>
                            </div>
                        </div>
                    </div>
                </a>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue;">
                            <img class="d-none xgif" src="img/gif/mop_1.gif" alt="customer" />
                            <img class="xpng" src="img/gif/mop_1.png" alt="customer" />
                            <div>
                                <label>ทำความสะอาด</label>
                            </div>
                        </div>
                    </div>
                </a>

                <a href="#" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue">
                            <img class="d-none xgif" src="img\gif\blank.png" alt="Rooms" />
                            <img class="xpng" src="img\gif\blank.png" alt="Rooms" />
                             <div class=""> <!-- เนื้อหาที่ซ่อนไว้ -->
                                <label>...</label>
                            </div>
                        </div>
                    </div>
                </a>
               

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightskyblue">
                            <img class="d-none xgif" src="img\gif\right-arrow.gif" alt="Rooms" />
                            <img class="xpng" src="img\gif\right-arrow.png" alt="Rooms" />
                            <div>
                                <label>ทะเบียน อื่นๆ</label>
                            </div>
                        </div>
                    </div>
                </a>

               

            </div>
        </div>
        <%--/file--%>

        <%--Record--%>
        <div class="col-3 ms-2">
            <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan;">
                            <img class="d-none xgif" src="img\gif\cash.gif" alt="Rooms" />
                            <img class="xpng" src="img\gif\cash.png" alt="Rooms" />
                            <div>
                                <label>ใบเสร็จรับเงิน</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan;">

                            <img class="d-none xgif" src="img/gif/bill.gif" alt="customer" />
                            <img class="xpng" src="img/gif/bill.png" alt="customer" />
                            <div>
                                <label>ใบแจ้งค่าใช้จ่าย</label>
                            </div>
                        </div>
                    </div>
                </a>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan">
                            <img class="d-none xgif" src="img\gif\computer_dl.gif" alt="Process" />
                            <img class="xpng" src="img\gif\computer_dl.png" alt="Process" />
                            <div>
                                <label>สร้างใบแจ้งหนี้</label>
                            </div>
                        </div>
                    </div>
                </a>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan">
                            <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                            <img class="xpng" src="img\gif\building_dl.png" alt="Rooms" />
                            <div>
                                <label>บันทึกค่าส่วนกลาง</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan;">
                            <img class="d-none xgif" src="img/gif/water_tap.gif" alt="customer" />
                            <img class="xpng" src="img/gif/water_tap.png" alt="customer" />
                            <div>
                                <label>บันทึกค่าน้ำประปา</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan">
                            <img class="d-none xgif" src="img\gif\electric_socket.gif" alt="Rooms" />
                            <img class="xpng" src="img\gif\electric_socket.png" alt="Rooms" />
                            <div>
                                <label>บันทึกค่าไฟฟ้า</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: tan;">
                            <img class="d-none xgif" src="img/gif/add-file.gif" alt="customer" />
                            <img class="xpng" src="img/gif/add-file.png" alt="customer" />
                            <div>
                                <label>บันทึก รายการอื่นๆ</label>
                            </div>
                        </div>
                    </div>
                </a>


            </div>
        </div>
        <%--/Record--%>

        <%--Report--%>
        <div class="col-3 ms-2">
            <div class="p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink">
                            <%--<img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />--%>
                            <%--<img class="xpng" src="img\png\building_dl.png" alt="Rooms" />--%>
                            <div>
                                <label>รายงาน ทะเบียน</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink;">
                            <%--        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                            <img class="xpng" src="img/png/customer_dl.png" alt="customer" />--%>
                            <div>
                                <label>รายงาน บันทึก</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink">
                            <%--<img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                            <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />--%>
                            <div>
                                <label>รายงาน แจ้งค่าใช้จ่าย</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink;">
                            <%-- <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                            <img class="xpng" src="img/png/customer_dl.png" alt="customer" />--%>
                            <div>
                                <label>รายงาน รับเงิน</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--1--%>

                <a href="Room.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink">
                            <%-- <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                            <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />--%>
                            <div>
                                <label>รายงาน บัญชีลูกหนี้</label>
                            </div>
                        </div>
                    </div>
                </a>

                <%--2--%>

                <a href="customer.aspx" style="text-decoration: none;">
                    <div class="text-center">

                        <div class="text-center xcard" style="background-color: lightpink;">
                            <%-- <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                            <img class="xpng" src="img/png/customer_dl.png" alt="customer" />--%>
                            <div>
                                <label>รายงาน อื่นๆ</label>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
        <%--/Report--%>
    </div>


    <script>
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

    </script>

</div>
