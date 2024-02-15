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
    </style>


    <h5>ระบบบริหารอาคารชุด</h5>
    <b>นิติบุคคลอาคารชุด : xxxxxxxxxxx</b>

    <div class="d-flex justify-content-between">
      
            <%--file--%>
            <div class="col-3">
                <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">
                    <%--1--%>
                    <a href="Room.aspx" style="text-decoration: none;">
                        <div class="text-center">

                            <div class="text-center xcard shadow" style="background-color: lightskyblue;">
                                <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
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
                                <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
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
                                <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                                <div>
                                    <label>ประเภทรายรับ</label>
                                </div>
                            </div>
                        </div>
                    </a>



                    <a href="customer.aspx" style="text-decoration: none;">
                        <div class="text-center">

                            <div class="text-center xcard" style="background-color: lightskyblue;">
                                <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                <div>
                                    <label>ซ่อมบำรุง</label>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="customer.aspx" style="text-decoration: none;">
                        <div class="text-center">

                            <div class="text-center xcard" style="background-color: lightskyblue;">
                                <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                <div>
                                    <label>ทำความสะอาด</label>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="Room.aspx" style="text-decoration: none;">
                        <div class="text-center">

                            <div class="text-center xcard" style="background-color: lightskyblue">
                                <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                                <div>
                                    <label>ทะเบียน อื่นๆ</label>
                                </div>
                            </div>
                        </div>
                    </a>


                </div>
            </div>
            <%--/file--%>
            <div class="row col-9">
                <%--rc1--%>
                <div class="col-4">
                    <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">

                        <%--1--%>

                        <a href="Room.aspx" style="text-decoration: none;">
                            <div class="text-center">

                                <div class="text-center xcard" style="background-color: tan;">
                                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
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

                                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
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
                                    <img class="xpng" src="img\png\computer_dl.png" alt="Process" />
                                    <div>
                                        <label>สร้างใบแจ้งหนี้</label>
                                    </div>
                                </div>
                            </div>
                        </a>




                    </div>
                </div>
                <%--/rc1--%>

                <%--Record--%>
                <div class="col-4">
                    <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">



                        <a href="Room.aspx" style="text-decoration: none;">
                            <div class="text-center">

                                <div class="text-center xcard" style="background-color: tan">
                                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
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
                                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
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
                                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
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
                                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                    <div>
                                        <label>บันทึก รายการอื่นๆ</label>
                                    </div>
                                </div>
                            </div>
                        </a>


                    </div>
                </div>
                <%--/Record--%>
                <div>
                    <%--Report--%>
                    <div class="col-8">
                        <div class="m-2 p-2 d-flex justify-content-sm-start flex-wrap" style="background-color: lightblue; width: fit-content; border-radius: 10px 15px;">

                            <%--1--%>

                            <a href="Room.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink">
                                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                                        <div>
                                            <label>Room</label>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <%--2--%>

                            <a href="customer.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink;">
                                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                        <div>
                                            <label>Customer</label>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <%--1--%>

                            <a href="Room.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink">
                                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                                        <div>
                                            <label>Room</label>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <%--2--%>

                            <a href="customer.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink;">
                                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                        <div>
                                            <label>Customer</label>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <%--1--%>

                            <a href="Room.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink">
                                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                                        <div>
                                            <label>Room</label>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <%--2--%>

                            <a href="customer.aspx" style="text-decoration: none;">
                                <div class="text-center">

                                    <div class="text-center xcard" style="background-color: lightpink;">
                                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                                        <div>
                                            <label>Customer</label>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                    <%--/Report--%>
                </div>
            </div>
       
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
