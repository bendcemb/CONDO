<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="CD01.DtMst.Room" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Layout Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background-color: #333;
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

            .navbar a {
                color: white;
                text-decoration: none;
                padding: 0 1rem;
            }

        .container {
            display: flex;
            flex: 1;
            height: calc(100% - 3.5rem); /* Adjust height based on navbar height */
        }

        .sidebar {
            background-color: #f4f4f4;
            width: 200px;
            padding: 1rem;
            box-sizing: border-box;
        }

            .sidebar a {
                display: block;
                margin: 1rem 0;
                color: #333;
                text-decoration: none;
            }

        .content {
            display: flex;
            flex: 1;
        }

        .main {
            flex: 2;
            padding: 1rem;
            box-sizing: border-box;
        }

        .details {
            flex: 1;
            padding: 1rem;
            box-sizing: border-box;
            border-left: 1px solid #ccc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 0.5rem;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }
    </style>

    <script>
        function showDetails(detail) {
            document.getElementById('detailText').innerText = detail;
            document.getElementById('<%= txtroomid.ClientID %>').style.display = 'block';
            document.getElementById('<%= txtaddress.ClientID %>').style.display = 'block';
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <a href="#home">Home</a>
            <a href="#content">Content</a>
            <a href="#contact">Contact</a>
        </div>
        <div class="container">
            <div class="sidebar">
                <a href="#info">ข้อมูลหลัก</a>
                <a href="#invoice">ออกใบเสร็จ</a>
                <a href="#bill">ใบแจ้งหนี้</a>
                <a href="#report">รายงาน</a>
            </div>
            <div class="content">
                <div class="main">
                    <table>
                        <thead>
                            <tr>
                                <th>หัวข้อ</th>
                                <th>รายละเอียด</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr onclick="showDetails('รายการที่ 1')">
                                <td>รายการที่ 1</td>
                                <td>รายละเอียดที่ 1</td>
                            </tr>
                            <tr onclick="showDetails('รายการที่ 2')">
                                <td>รายการที่ 2</td>
                                <td>รายละเอียดที่ 2</td>
                            </tr>
                            <tr onclick="showDetails('รายการที่ 3')">
                                <td>รายการที่ 3</td>
                                <td>รายละเอียดที่ 3</td>
                            </tr>
                        </tbody>
                    </table>
                </div>


                <div class="details" id="details" style="border:1px solid gray; border-radius:25px 25px; margin:5px 7px 2px 1px;">
                    <h2>รายละเอียด</h2>
                    <p id="detailText">กรุณาเลือกจากตารางเพื่อดูรายละเอียด</p>
                    <asp:TextBox ID="txtroomid" runat="server" Style="display: none;" placeholder="กรอกข้อมูล room" CssClass="form-control"></asp:TextBox>
                    <asp:TextBox ID="txtaddress" runat="server" Style="display: none;" placeholder="กรอกข้อมูล address" CssClass="form-control"></asp:TextBox>
                </div>

                <%--     <div class="details" id="details">
                    <h2>รายละเอียด</h2>
                    <p>กรุณาเลือกจากตารางเพื่อดูรายละเอียด</p>

                    <asp:TextBox ID="txtroomid" runat="server"></asp:TextBox>
                </div>--%>
            </div>
        </div>

        <%--  <script>
            function showDetails(detail) {
                document.getElementById('details').innerHTML = `
                <h2>รายละเอียด</h2>
                <p>${detail}</p>
                <label>กรอกข้อมูลเพิ่มเติม:</label>
                <input type="text" placeholder="กรอกข้อมูล">
                <asp:TextBox ID="txtroomid" runat="server"></asp:TextBox>
            `;
            }
        </script>--%>
    </form>
</body>
</html>
