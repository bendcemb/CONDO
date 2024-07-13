<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ROOM.aspx.cs" Inherits="CMM.ROOM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>ROOM</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />

    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Kanit:300" rel="stylesheet" />

    <link rel="shortcut icon" href="dist/img/favicon.ico" />
</head>
<body class="hold-transition layout-top-nav" style="font-family: kanit;">
    <div class="wrapper">
        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container">
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card" style="background-color:<%-- /*#ed174b*/"--%>>
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <div class="col-lg-6 align-content-lg-center">
                                                <img class="img-fluid mb-3" src="dist/img/SingerLogo05_470.png" alt="Photo" />
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-lg-6 text-center">
                                                <h2 style="color: #FFFFFF; margin-top: 20px">ความสุขทุกสิ่งเป็นจริงที่ซิงเกอร์</h2>
                                            </div>
                                            <!-- /.col -->
                                        </div>
                                        <div class="card">
                                            <div class="card-body">
                                                <img class="d-block w-100" src="dist/img/3_Sawing_Singer_จักรเย็บผ้า_V8.jpg" alt="" />
                                                <br />
                                                <img class="d-block w-100" src="dist/img/3_Sawing_Singer_จักรเย็บผ้า_info_1.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-body" style="padding: 0px; padding-top: 10px;">
                                                <div style="text-align: center; color: #04488e;">
                                                    <h4>บริษัท ซิงเกอร์ประเทศไทย จํากัด (มหาชน)</h4>
                                                    ขอขอบคุณท่านที่ให้ความสนใจในโครงการ<br />
                                                    ลงทะเบียน เพื่อขอรับสิทธิพิเศษสำหรับผู้สนใจซื้อจักรและอุปกรณ์จักรเย็บผ้าซิงเกอร์<br />
                                                    <p></p>
                                                    เงื่อนไขการเข้าร่วมโปรแกรมผ่อนไปใช้ไป<br />
                                                    1. อายุไม่ต่ำกว่า 20 - 60 ปีบริบูรณ์ สัญชาติไทย<br />
                                                    2. รายได้เฉลี่ยต่อเดือน 8,000 บาท<br />
                                                    3. มีการเดินบัญชีไม่ต่ำกว่า 6 เดือน<br />
                                                    <p></p>
                                                    <p><small>* ข้อมูลส่วนตัวของท่านปลอดภัยแน่นอน</small></p>
                                                </div>
                                                <div class="row" style="margin: 10px;"></div>


                                                <!-- ### 1 ข้อมูลส่วนบุคคล -->
                                                <div class="card card-primary">
                                                    <div class="card-header" style="background-color: #ed174b;">
                                                        <h3 class="card-title">โปรดระบุข้อมูลดังต่อไปนี้ ให้ถูกต้องเพื่อสิทธิประโยชน์ของท่าน</h3>
                                                    </div>
                                                    <div class="card-body">

                                                        <div class="row">
                                                            <%--ชื่อ นามสกุล--%>
                                                            <div class="col-sm-2">
                                                                <div class="form-group">
                                                                    คำนำหน้า<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="กรุณาระบุข้อมูล" ControlToValidate="ddlSCP_CUSTOMER_NAME_FULL_TITLE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_NAME_FULL_TITLE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="นาย" Text="นาย"></asp:ListItem>
                                                                        <asp:ListItem Value="นาง" Text="นาง"></asp:ListItem>
                                                                        <asp:ListItem Value="นางสาว" Text="นางสาว"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                                <div class="form-group">
                                                                    ชื่อ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_NAME_FULL_FIRST" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_NAME_FULL_FIRST" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-5">
                                                                <div class="form-group">
                                                                    นามสกุล<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_NAME_FULL_LAST" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_NAME_FULL_LAST" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">

                                                            <%--เบอร์มือถือ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    เบอร์มือถือ<label style="color: #ed174b; margin-left: 2px;">*</label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_TELEPHONE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ 10 หลัก และถูกต้อง" ControlToValidate="txtSCP_CUSTOMER_TELEPHONE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_TELEPHONE" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumberKey(event)" TextMode="Phone"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                            <%--จังหวัด--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    จังหวัด<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlC4C_REGISTER_PROVINCE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlC4C_REGISTER_PROVINCE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Text="กรุณาเลือกจังหวัด" Value="" Selected="True"></asp:ListItem>
                                                                        <asp:ListItem Text="กรุงเทพมหานคร" Value="กรุงเทพมหานคร"></asp:ListItem>
                                                                        <asp:ListItem Text="กระบี่	" Value="กระบี่"></asp:ListItem>
                                                                        <asp:ListItem Text="กาญจนบุรี" Value="กาญจนบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="กาฬสินธุ์" Value="กาฬสินธุ์"></asp:ListItem>
                                                                        <asp:ListItem Text="กำแพงเพชร" Value="กำแพงเพชร"></asp:ListItem>
                                                                        <asp:ListItem Text="ขอนแก่น" Value="ขอนแก่น"></asp:ListItem>
                                                                        <asp:ListItem Text="จันทบุรี" Value="จันทบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ฉะเชิงเทรา" Value="ฉะเชิงเทรา"></asp:ListItem>
                                                                        <asp:ListItem Text="ชลบุรี" Value="ชลบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ชัยนาท" Value="ชัยนาท"></asp:ListItem>
                                                                        <asp:ListItem Text="ชัยภูมิ" Value="ชัยภูมิ"></asp:ListItem>
                                                                        <asp:ListItem Text="ชุมพร" Value="ชุมพร"></asp:ListItem>
                                                                        <asp:ListItem Text="เชียงราย" Value="เชียงราย"></asp:ListItem>
                                                                        <asp:ListItem Text="เชียงใหม่" Value="เชียงใหม่"></asp:ListItem>
                                                                        <asp:ListItem Text="ตรัง" Value="ตรัง"></asp:ListItem>
                                                                        <asp:ListItem Text="ตราด" Value="ตราด"></asp:ListItem>
                                                                        <asp:ListItem Text="ตาก" Value="ตาก"></asp:ListItem>
                                                                        <asp:ListItem Text="นครนายก" Value="นครนายก"></asp:ListItem>
                                                                        <asp:ListItem Text="นครปฐม" Value="นครปฐม"></asp:ListItem>
                                                                        <asp:ListItem Text="นครพนม" Value="นครพนม"></asp:ListItem>
                                                                        <asp:ListItem Text="นครราชสีมา" Value="นครราชสีมา"></asp:ListItem>
                                                                        <asp:ListItem Text="นครศรีธรรมราช" Value="นครศรีธรรมราช"></asp:ListItem>
                                                                        <asp:ListItem Text="นครสวรรค์" Value="นครสวรรค์"></asp:ListItem>
                                                                        <asp:ListItem Text="นนทบุรี" Value="นนทบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="นราธิวาส" Value="นราธิวาส"></asp:ListItem>
                                                                        <asp:ListItem Text="น่าน" Value="น่าน"></asp:ListItem>
                                                                        <asp:ListItem Text="บึงกาฬ" Value="บึงกาฬ"></asp:ListItem>
                                                                        <asp:ListItem Text="บุรีรัมย์" Value="บุรีรัมย์"></asp:ListItem>
                                                                        <asp:ListItem Text="ปทุมธานี" Value="ปทุมธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="ประจวบคีรีขันธ์" Value="ประจวบคีรีขันธ์"></asp:ListItem>
                                                                        <asp:ListItem Text="ปราจีนบุรี" Value="ปราจีนบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ปัตตานี" Value="ปัตตานี"></asp:ListItem>
                                                                        <asp:ListItem Text="พระนครศรีอยุธยา" Value="พระนครศรีอยุธยา"></asp:ListItem>
                                                                        <asp:ListItem Text="พะเยา" Value="พะเยา"></asp:ListItem>
                                                                        <asp:ListItem Text="พังงา" Value="พังงา"></asp:ListItem>
                                                                        <asp:ListItem Text="พัทลุง	" Value="พัทลุง"></asp:ListItem>
                                                                        <asp:ListItem Text="พิจิตร" Value="พิจิตร"></asp:ListItem>
                                                                        <asp:ListItem Text="พิษณุโลก" Value="พิษณุโลก"></asp:ListItem>
                                                                        <asp:ListItem Text="เพชรบุรี" Value="เพชรบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="เพชรบูรณ์" Value="เพชรบูรณ์"></asp:ListItem>
                                                                        <asp:ListItem Text="แพร่" Value="แพร่"></asp:ListItem>
                                                                        <asp:ListItem Text="ภูเก็ต" Value="ภูเก็ต"></asp:ListItem>
                                                                        <asp:ListItem Text="มหาสารคาม" Value="มหาสารคาม"></asp:ListItem>
                                                                        <asp:ListItem Text="มุกดาหาร" Value="มุกดาหาร"></asp:ListItem>
                                                                        <asp:ListItem Text="แม่ฮ่องสอน" Value="แม่ฮ่องสอน"></asp:ListItem>
                                                                        <asp:ListItem Text="ยโสธร" Value="ยโสธร"></asp:ListItem>
                                                                        <asp:ListItem Text="ยะลา" Value="ยะลา"></asp:ListItem>
                                                                        <asp:ListItem Text="ร้อยเอ็ด" Value="ร้อยเอ็ด"></asp:ListItem>
                                                                        <asp:ListItem Text="ระนอง" Value="ระนอง"></asp:ListItem>
                                                                        <asp:ListItem Text="ระยอง" Value="ระยอง"></asp:ListItem>
                                                                        <asp:ListItem Text="ราชบุรี" Value="ราชบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ลพบุรี" Value="ลพบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="ลำปาง" Value="ลำปาง"></asp:ListItem>
                                                                        <asp:ListItem Text="ลำพูน	" Value="ลำพูน"></asp:ListItem>
                                                                        <asp:ListItem Text="เลย" Value="เลย"></asp:ListItem>
                                                                        <asp:ListItem Text="ศรีสะเกษ" Value="ศรีสะเกษ"></asp:ListItem>
                                                                        <asp:ListItem Text="สกลนคร" Value="สกลนคร"></asp:ListItem>
                                                                        <asp:ListItem Text="สงขลา" Value="สงขลา"></asp:ListItem>
                                                                        <asp:ListItem Text="สตูล" Value="สตูล"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรปราการ" Value="สมุทรปราการ"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรสงคราม" Value="สมุทรสงคราม"></asp:ListItem>
                                                                        <asp:ListItem Text="สมุทรสาคร" Value="สมุทรสาคร"></asp:ListItem>
                                                                        <asp:ListItem Text="สระแก้ว" Value="สระแก้ว"></asp:ListItem>
                                                                        <asp:ListItem Text="สระบุรี" Value="สระบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สิงห์บุรี" Value="สิงห์บุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุโขทัย" Value="สุโขทัย"></asp:ListItem>
                                                                        <asp:ListItem Text="สุพรรณบุรี" Value="สุพรรณบุรี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุราษฎร์ธานี" Value="สุราษฎร์ธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="สุรินทร์" Value="สุรินทร์"></asp:ListItem>
                                                                        <asp:ListItem Text="หนองคาย" Value="หนองคาย"></asp:ListItem>
                                                                        <asp:ListItem Text="หนองบัวลำภู" Value="หนองบัวลำภู"></asp:ListItem>
                                                                        <asp:ListItem Text="อ่างทอง" Value="อ่างทอง"></asp:ListItem>
                                                                        <asp:ListItem Text="อำนาจเจริญ" Value="อำนาจเจริญ"></asp:ListItem>
                                                                        <asp:ListItem Text="อุดรธานี" Value="อุดรธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="อุตรดิตถ์" Value="อุตรดิตถ์"></asp:ListItem>
                                                                        <asp:ListItem Text="อุทัยธานี" Value="อุทัยธานี"></asp:ListItem>
                                                                        <asp:ListItem Text="อุบลราชธานี" Value="อุบลราชธานี"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>

                                                            <%--อายุ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    อายุ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_AGE" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_AGE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="น้อยกว่า 20 ปี" Text="น้อยกว่า 20 ปี"></asp:ListItem>
                                                                        <asp:ListItem Value="อายุ 20 ปีบริบูรณ์ - 30 ปี" Text="อายุ 20 ปีบริบูรณ์ - 30 ปี"></asp:ListItem>
                                                                        <asp:ListItem Value="อายุ 31 - 40 ปี" Text="อายุ 31 - 40 ปี"></asp:ListItem>
                                                                        <asp:ListItem Value="อายุ 41 - 50 ปี" Text="อายุ 41 - 50 ปี"></asp:ListItem>
                                                                        <asp:ListItem Value="อายุ 51 - 60 ปี" Text="อายุ 51 - 60 ปี"></asp:ListItem>
                                                                        <asp:ListItem Value="มากกว่า 60 ปี" Text="มากกว่า 60 ปี"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--อาชีพ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    อาชีพ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_OCCUPATION" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="กรุณาระบุอาชีพอื่นๆ" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ClientValidationFunction="ValidateddlSCP_CUSTOMER_OCCUPATION" EnableClientScript="true" ControlToValidate="ddlSCP_CUSTOMER_OCCUPATION"></asp:CustomValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_OCCUPATION" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="เจ้าของกิจการ / ธุรกิจส่วนตัว" Text="เจ้าของกิจการ / ธุรกิจส่วนตัว"></asp:ListItem>
                                                                        <asp:ListItem Value="พนักงานประจำ / ลูกจ้างประจำ" Text="พนักงานประจำ / ลูกจ้างประจำ"></asp:ListItem>
                                                                        <asp:ListItem Value="พนักงานพาร์ทไทม์ / ลูกจ้างรายวัน" Text="พนักงานพาร์ทไทม์ / ลูกจ้างรายวัน"></asp:ListItem>
                                                                        <asp:ListItem Value="ราชการ / รัฐวิสาหกิจ" Text="ราชการ / รัฐวิสาหกิจ"></asp:ListItem>
                                                                        <asp:ListItem Value="รับจ้างอิสระทั่วไป" Text="รับจ้างอิสระทั่วไป"></asp:ListItem>
                                                                        <asp:ListItem Value="นักเรียน / นักศึกษา" Text="นักเรียน / นักศึกษา"></asp:ListItem>
                                                                        <asp:ListItem Value="แม่บ้าน / ว่างงาน" Text="แม่บ้าน / ว่างงาน"></asp:ListItem>
                                                                        <asp:ListItem Value="อื่นๆ" Text="อื่นๆ โปรดระบุ"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:TextBox ID="txtSCP_CUSTOMER_OCCUPATION_OTHER" runat="server" CssClass="form-control" placeholder="อื่นๆ โปรดระบุ"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <%--รายได้ต่อเดือน--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    รายได้ต่อเดือน<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_INCOME" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_INCOME" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="น้อยกว่า 8,000 บาท" Text="น้อยกว่า 8,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="8,001-15,000 บาท" Text="8,001-15,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="15,001-30,000 บาท" Text="15,001-30,000 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="มากกว่า 30,000 บาท" Text="มากกว่า 30,000 บาท"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--วิธีการรับเงิน--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    วิธีการรับเงิน<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_INCOME" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_INCOME_TYPE" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="เงินสด" Text="เงินสด"></asp:ListItem>
                                                                        <asp:ListItem Value="ผ่านบัญชีธนาคาร" Text="ผ่านบัญชีธนาคาร"></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <%--ปัจจุบันท่านมีบัตรเครดิต และ/หรือ บัตรกดเงินสดหรือไม่--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    ปัจจุบันท่านมีบัตรเครดิต และ/หรือ บัตรกดเงินสดหรือไม่<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="กรุณาระบุข้อมูลให้ครบ และถูกต้อง" ControlToValidate="ddlSCP_CUSTOMER_OTHER" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_OTHER" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>
                                                                        <asp:ListItem Value="มี บัตรเครดิต/บัตรกดเงินสด" Text="มี"></asp:ListItem>
                                                                        <asp:ListItem Value="ไม่มี บัตรเครดิต/บัตรกดเงินสด" Text="ไม่มี"></asp:ListItem>
                                                                    </asp:DropDownList>

                                                                </div>
                                                            </div>

                                                            <%-- หมายเหตุเพิ่มเติม / เวลาที่สะดวกให้ติดต่อกลับ  --%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    หมายเหตุเพิ่มเติม (ไม่จำเป็นต้องใส่)
                                                                                <asp:TextBox ID="txtSCP_CUSTOMER_CONV_DATE" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>


                                                            <%--สินค้าที่สนใจ--%>
                                                            <div class="col-sm-12">
                                                                <div class="form-group">
                                                                    สินค้าที่สนใจ<label style="color: #ed174b; margin-left: 2px;">*</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="กรุณาระบุข้อมูล" ControlToValidate="ddlSCP_CUSTOMER_LINEID" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="ddlSCP_CUSTOMER_LINEID" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="" Text="กรุณาเลือก"></asp:ListItem>

                                                                        <%--<asp:ListItem Value="จักรเส้นตรง (ไม้ธรรมดา) รุ่น 15NL1  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท" Text="จักรเส้นตรง (ไม้ธรรมดา) รุ่น 15NL1  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรโพ้งกระเป๋าหิ้วซิงเกอร์ รุ่น 14HD854  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท" Text="จักรโพ้งกระเป๋าหิ้วซิงเกอร์ รุ่น 14HD854  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4432  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4432  แถมฟรี กรรไกรซิงเกอร์ 7 นิ้ว มูลค่า 650 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 1408" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 1408"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223G" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223G"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223R" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223R"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4411จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 5205C" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4411จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 5205C"></asp:ListItem>
                                                                        <asp:ListItem Value="เครื่องรีดผ้า เอ็มเอสพี-9 รุ่น MSP-9 แถมฟรี  เครื่องบดสับ ขนาด 2.4L  มูลค่า 1,690 บาท" Text="เครื่องรีดผ้า เอ็มเอสพี-9 รุ่น MSP-9 แถมฟรี  เครื่องบดสับ ขนาด 2.4L  มูลค่า 1,690 บาท"></asp:ListItem>--%>

                                                                        <asp:ListItem Value="จักรเส้นตรง (ไม้ธรรมดา) รุ่น 15NL1  ผ่อนเริ่มต้น 820 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรเส้นตรง (ไม้ธรรมดา) รุ่น 15NL1  ผ่อนเริ่มต้น 820 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรโพ้งกระเป๋าหิ้วซิงเกอร์ รุ่น 14HD854  ผ่อนเริ่มต้น 1,500 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรโพ้งกระเป๋าหิ้วซิงเกอร์ รุ่น 14HD854  ผ่อนเริ่มต้น 1,500 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4432  ผ่อนเริ่มต้น 980 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4432  ผ่อนเริ่มต้น 980 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 1408 ผ่อนเริ่มต้น 700 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 1408 ผ่อนเริ่มต้น 700 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223G" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223G"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223R" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 3223R"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4411 ผ่อนเริ่มต้น 780 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 4411 ผ่อนเริ่มต้น 780 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 5205C ผ่อนเริ่มต้น 1,000 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท" Text="จักรกระเป๋าหิ้วซิงเกอร์ รุ่น 5205C ผ่อนเริ่มต้น 1,000 บาท แถมฟรี เครื่องปั่นอเนกประสงค์ ขนาด 0.6 ลิตร มูลค่า 990 บาท"></asp:ListItem>
                                                                        <asp:ListItem Value="เครื่องรีดผ้า รุ่น MSP-9 / MSP-10 ฟรีเครื่องบดสับ ขนาด 2.4 ลิตร มูลค่า 1,690.-" Text="เครื่องรีดผ้า รุ่น MSP-9 / MSP-10 ฟรีเครื่องบดสับ ขนาด 2.4 ลิตร มูลค่า 1,690.-"></asp:ListItem>

                                                                        <asp:ListItem Value="จักรเย็บผ้ากระเป๋าหิ้วซิงเกอร์" Text="จักรเย็บผ้ากระเป๋าหิ้วซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรปักคอมพิวเตอร์กระเป๋าหิ้วซิงเกอร์" Text="จักรปักคอมพิวเตอร์กระเป๋าหิ้วซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรเย็บผ้าครัวเรือนเล็กซิงเกอร์" Text="จักรเย็บผ้าครัวเรือนเล็กซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="จักรเย็บผ้าอุตสาหกรรมซิงเกอร์" Text="จักรเย็บผ้าอุตสาหกรรมซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="ชุดอุปกรณ์ตัดเย็บซิงเกอร์" Text="ชุดอุปกรณ์ตัดเย็บซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="น้ำมันจักรซิงเกอร์" Text="น้ำมันจักรซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="กรรไกรซิงเกอร์" Text="กรรไกรซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="เข็มจักรซิงเกอร์" Text="เข็มจักรซิงเกอร์"></asp:ListItem>
                                                                        <asp:ListItem Value="เครื่องรีดผ้าซิงเกอร์ รุ่น MSP-9" Text="เครื่องรีดผ้าซิงเกอร์ รุ่น MSP-9"></asp:ListItem>

                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <asp:CheckBox ID="ckbAccept1" runat="server" />
                                                                    <small style="color: #ed174b">*</small><small>ข้าพเจ้ายินยอมให้บริษัท ซิงเกอร์ประเทศไทย จํากัด (มหาชน) และกลุ่มบริษัท
เก็บรวบรวม จัดเก็บรักษา ใช้ ประมวลผล หรือเปิดเผยข้อมูลส่วนบุคคลของข้าพเจ้า เพื่อนำเสนอผลิตภัณฑ์ บริการ หรือส่งเสริมการขายต่างๆ 
หรือเพื่อการวิจัยตลาด ติดตาม ประมวลผลและวิเคราะห์ข้อมูลของข้าพเจ้าเพื่อการปรับปรุงผลิตภัณฑ์และ/หรือบริการ 
ติดตามการใช้บริการ หรือการพัฒนาผลิตภัณฑ์และ/บริการให้เหมาะสมกับความต้องการของข้าพเจ้า ไม่ว่าจะนำเสนอโดยบริษัท 
หรือกลุ่มบริษัท หรือพันธมิตรทางธุรกิจในการจัดหาผลิตภัณฑ์และการให้บริการแก่บริษัทหรือกลุ่มบริษัท
                                                                    </small>
                                                                    <br />
                                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="กรุณายินยอม" SetFocusOnError="true" ValidationGroup="valid" CssClass="text-danger small" Display="Dynamic" ClientValidationFunction="ValidateCheckBoxCkbAccept1" EnableClientScript="true"></asp:CustomValidator>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <div class="align-content-center" style="text-align: center;">
                                                                        <h3 style="margin-top: 20px">สแกนเพิ่มเพื่อน เพื่อรับข่าวสารและโปรโมชันพิเศษก่อนใครได้เลย!!</h3>
                                                                        <img src="https://qr-official.line.me/sid/M/444yqxoe.png" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>



                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div style="margin-top: 24px;"></div>
                                        <div class="row">
                                            <div class="col-lg-6 text-center" style="color: #FFFFFF">
                                                <a href="https://www.singerthai.co.th/th/home" target="_blank" class="form-group">
                                                    <img class="img-fluid" src="dist/img/SingerLogo05_470.png" alt="Photo" style="margin-bottom: 14px; width: 150px;" />
                                                    <p style="color: #FFFFFF">บริษัท ซิงเกอร์ประเทศไทย จำกัด (มหาชน)</p>
                                                </a>
                                            </div>

                                            <!-- /.col -->
                                            <div class="col-lg-6 text-center" style="color: #FFFFFF">
                                                <h6><i class="fas fa-phone-square-alt"></i>&nbsp;&nbsp;ช่องทางการติดต่อ</h6>
                                                <small>Call Center 02-234-7171 (09.00-16.00)</small>
                                            </div>
                                            <!-- /.col -->
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

        </form>

    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>

    <script type='text/javascript'>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode

            if (charCode == 46) {
                var inputValue = $("#inputfield").val()
                if (inputValue.indexOf('.') < 1) {
                    return true;
                }
                return false;
            }
            if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TNN9TP8"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

</body>
</html>
