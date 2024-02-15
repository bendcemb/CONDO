<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CD02.Index" %>

<link href="Content/bootstrap.min.css" rel="stylesheet" />

<div class="container mt-5">
    <style>
        .xcard {
            margin: 4px 6px 4px 6px;
            border-radius: 10px 15px;
            transition: background-color 0.3s ease; /* เพิ่มเอฟเฟกต์การเปลี่ยนสี */
        }

            .xcard:hover {
                /*background-color: lightgray;*/
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

    <header class="text-center">
        <h5>ระบบบริหารอาคารชุด</h5>
        <p>cdspfkjpdposkdfop</p>
    </header>

    <b>นิติบุคคลอาคารชุด : xxxxxxxxxxx</b>
    <div class="align-content-center align-items-center">
        <%--file--%>
        <div class="d-flex flex-wrap justify-content-start p-2" style="background-color: azure">

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Room</label>
                    <div class="text-center xcard" style="background-color: lightskyblue">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Customer</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Room</label>
                    <div class="text-center xcard" style="background-color: lightskyblue">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Customer</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Room</label>
                    <div class="text-center xcard" style="background-color: lightskyblue">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>Customer</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>

        </div>
        <%--/file--%>

        <%--Record--%>
        <div class="d-flex flex-wrap justify-content-start mt-2 p-2" style="background-color: beige">

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>บันทึกค่าส่วนกลาง</label>
                    <div class="text-center xcard" style="background-color: lightskyblue">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>บันทึกค่าน้ำประปา</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>บันทึกค่าไฟฟ้า</label>
                    <div class="text-center xcard" style="background-color: lightskyblue">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>บันทึก รายการอื่นๆ</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>

            <%--1--%>

            <a href="Room.aspx" style="text-decoration: none;">
                <div class="text-center ms-5">
                    <label>ใบเสร็จรับเงิน</label>
                    <div class="text-center xcard" style="background-color: lightskyblue;">
                        <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" style="width:150px;"/>
                        <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                    </div>
                </div>
            </a>

            <%--2--%>

            <a href="customer.aspx" style="text-decoration: none;">
                <div class="text-center">
                    <label>ใบแจ้งค่าใช้จ่าย</label>
                    <div class="text-center xcard" style="background-color: lightpink;">
                        <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" style="width:150px;" />
                        <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                    </div>
                </div>
            </a>


        </div>
    <%--/Record--%>

    <%--Report--%>
    <div class="d-flex flex-wrap justify-content-start mt-2 p-2" style="background-color: bisque">

        <%--1--%>

        <a href="Room.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Room</label>
                <div class="text-center xcard" style="background-color: lightskyblue">
                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                </div>
            </div>
        </a>

        <%--2--%>

        <a href="customer.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Customer</label>
                <div class="text-center xcard" style="background-color: lightpink;">
                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                </div>
            </div>
        </a>

        <%--1--%>

        <a href="Room.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Room</label>
                <div class="text-center xcard" style="background-color: lightskyblue">
                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                </div>
            </div>
        </a>

        <%--2--%>

        <a href="customer.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Customer</label>
                <div class="text-center xcard" style="background-color: lightpink;">
                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                </div>
            </div>
        </a>

        <%--1--%>

        <a href="Room.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Room</label>
                <div class="text-center xcard" style="background-color: lightskyblue">
                    <img class="d-none xgif" src="img\gif\building_dl.gif" alt="Rooms" />
                    <img class="xpng" src="img\png\building_dl.png" alt="Rooms" />
                </div>
            </div>
        </a>

        <%--2--%>

        <a href="customer.aspx" style="text-decoration: none;">
            <div class="text-center">
                <label>Customer</label>
                <div class="text-center xcard" style="background-color: lightpink;">
                    <img class="d-none xgif" src="img/gif/customer_dl.gif" alt="customer" />
                    <img class="xpng" src="img/png/customer_dl.png" alt="customer" />
                </div>
            </div>
        </a>
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
            card.style.backgroundColor = 'lightgray'; // เพิ่มสีพื้นหลังเมื่อเมาส์เข้ามา
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
