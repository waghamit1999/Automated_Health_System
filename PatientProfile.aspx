<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientProfile.aspx.cs" Inherits="MyFinalProject.PatientView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Automated Health System </title>

    <link rel="shortcut icon" href="../Images/AHSLOGO.jpg" type="image/x-icon"/>

    <link href="../boot/bootstrap.min.css" rel="stylesheet" />
    <script src="../boot/bootstrap.min.js"></script>
    <script src="../boot/jquery.slim.min.js"></script>
    <script src="../boot/bootstrap.bundle.min.js"></script>
   <link href="../boot/all.css" rel="stylesheet" />
   <script src="../boot/jquery.min.js"></script>
    <style>

 /*   Navbar/menubae css   */
 	.mnu{
	padding: 4px 10px 4px 10px;
	list-style: none;
	text-transform: uppercase;
	font-size:larger;
	border: solid 0px ;
	border-color: white;
	border-radius: 5px;
	cursor:pointer;
	transition: 0.5s ease;
          }
          
    .mnu:hover{
	background-color: #ffffff;
	color: #4169E1;
              }


   /* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

        .auto-style8 {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
            width: 98%;
            height: 94px;
        }
        .loghov:hover{
            background-color: #4169E1;
	        color: #ffffff;
        }
       

        .auto-style9 {
            cursor: pointer;
        }
        .auto-style10 {
            cursor: pointer;
            text-align: left;
        }
        .auto-style11 {
            cursor: pointer;
            text-align: right;
        }
        .auto-style12 {
            cursor: pointer;
            text-align: center;
        }
       

        .auto-style14 {
            cursor: pointer;
            text-align: left;
            height: 29px;
        }
        .auto-style15 {
            text-align: left;
            height: 29px;
        }
        .auto-style16 {
            cursor: pointer;
            text-align: center;
            height: 29px;
        }
       

        .auto-style18 {
            cursor: pointer;
            text-align: justify;
        }
       

        .auto-style19 {
            text-align: left;
        }
        .auto-style20 {
            text-align: center;
        }
       

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-justify">
     <div>

         <nav class="navbar navbar-expand-xl navbar-dark" style="background: linear-gradient(54deg,#483d8b, #00bfff);">
  <a class="navbar-brand" href="#"><img src="../Images/AHSLOGO.jpg" height="50px" width="150px"/></a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
        
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
   <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link " href="../Home.aspx"><b class="mnu">HOME</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../Doctor/DoctorLogin.aspx"><b class="mnu">DOCTOR</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../Receptionist/ReceptionistLogin.aspx"><b class="mnu">RECEPTATIONIST</b></a>
      </li>  
       <li class="nav-item">
        <a class="nav-link" href="../Medical/MedicalLogin.aspx"><b class="mnu">MEDICAL</b></a>
      </li>   
       <li class="nav-item">
        <a class="nav-link active" href="../PatientLogin.aspx"><b class="mnu">PATIENT</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/AboutUs.aspx"><b class="mnu">ABOUT US</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/ContactUs.aspx"><b class="mnu">CONTACT US</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/AdminLogin.aspx"><b class="mnu">ADMIN</b></a>
      </li> 
    </ul>
    
  </div>  
       </nav>
     
     </div>  
       <br/>

            <table align="center" class="auto-style11">
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Patient ID :" Font-Size="Large"></asp:Label>
                     </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtPaIdSearch" runat="server" Width="200px"></asp:TextBox>
                     &nbsp;
                        </td>
                    <td class="auto-style9" id="BtnSearch">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12" rowspan="7">
                        <asp:Image ID="Image1" runat="server" Height="166px" Width="140px" />
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                     </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label34" runat="server" Font-Bold="True" Text="Password:" Font-Size="Large"></asp:Label>
                     </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtPatientPass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="BtnSearch0" runat="server" Text="Search" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" CssClass="auto-style9" Height="29px" OnClick="BtnSearch_Click" />
                     </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                     </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                     </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtName" runat="server" Width="200px" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                     </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtDOB" runat="server" Width="200px" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblDOB" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label28" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label33" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="DropGender" runat="server" Width="200px" Visible="False" >
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Trans-Gender</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblGender" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label29" runat="server" Text="Blood Group"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label31" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="DropBloodGroup" runat="server" Width="200px" Visible="False">
                            <asp:ListItem>Select Blood Group</asp:ListItem>
                            <asp:ListItem>A positive (A+)</asp:ListItem>
                            <asp:ListItem>A negative (A-)</asp:ListItem>
                            <asp:ListItem>B positive (B+)</asp:ListItem>
                            <asp:ListItem>B negative (B-)</asp:ListItem>
                            <asp:ListItem>O positive (O+)</asp:ListItem>
                            <asp:ListItem>O negative (O-)</asp:ListItem>
                            <asp:ListItem>AB positive (AB+)</asp:ListItem>
                            <asp:ListItem>AB negative (AB-)</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblBloodGroup" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label18" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtMobNo" runat="server" Width="200px" MaxLength="10" TextMode="Phone" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblMobNo" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtAddress" runat="server" Width="200px" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblAddress" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label32" runat="server" Text="Education"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label15" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TxtEdu" runat="server" Width="200px" TextMode="MultiLine" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblEdu" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label30" runat="server" Text="Upload Photo"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label27" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:FileUpload ID="FilePic" runat="server" Width="235px" Visible="False" />
                        <asp:Label ID="lblPhoto" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label20" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19" id="Txt">
                        <asp:TextBox ID="TxtUserName" runat="server" Width="200px" Visible="False" ></asp:TextBox>
                        <asp:Label ID="lblUsername" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtPass" runat="server" Width="200px" Visible="False"></asp:TextBox>
                        <asp:Label ID="lblPassword" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="6">
                        <br />
                        <asp:Label ID="LblMsg" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#00CC00"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                     <td colspan="6" class="auto-style20">
                         <br />
                        <asp:Button ID="BtnSave" runat="server" Text="Save" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnSave_Click" Visible="False" />
                         &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnEdit" runat="server" Text="Edit" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnEdit_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnClr" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnMyRecord" runat="server" Text="View My Records" Width="161px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" CssClass="auto-style9" OnClick="BtnMyRecord_Click" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnLogout" runat="server" Text="Logout" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnLogout_Click" />
                    </td>
                </tr>
                
                <tr>
                    <td colspan="6"> &nbsp;</td>
                </tr>
                </table>

           
            <div class="text-justify">
                <hr />
               <br />

                <table class="w-100">
                    <tr>
                        <td class="text-center">
                        <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Your Data" Font-Names="Times New Roman" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%" Visible="False">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Medicine Data" Font-Names="Times New Roman" Visible="False"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        </td>
                    </tr>
                </table>

                <br />
      
            </div>
    <div class="auto-style8" style="margin-left:9px;">
         <div class="column" style="width:99%;height:60px;margin:0px 0px 5px 10px;border:5px solid #0066ff;border-radius:15px;background-color:#0066ff;text-align:center;">
             <p style="text-transform:capitalize;font-size:1.3vw;color:white;font-weight:bold;margin-top:3px;">
                 copyright &copy; automatedhealthsystem.com - all rights reserved.all rights reserved.</p>
         </div>
    </div>

        </div>

    </form>
    </body>
</html>
