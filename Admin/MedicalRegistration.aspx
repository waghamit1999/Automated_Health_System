<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicalRegistration.aspx.cs" Inherits="MyFinalProject.MdicalRegistration" %>

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

        .loghov:hover{
            background-color: #4169E1;
	        color: #ffffff;
        }
       

        .auto-style9 {
            width: 180px;
        }
        .auto-style10 {
            width: 26px;
        }
        .auto-style11 {
            width: 71%
        }
       

        .auto-style12 {
            width: 27px;
        }
       

        .auto-style14 {
            width: 180px;
            height: 26px;
        }
        .auto-style15 {
            width: 26px;
            height: 26px;
        }
        .auto-style16 {
            width: 27px;
            height: 26px;
        }
       

        .auto-style17 {
            text-align: right;
            height: 29px;
        }
        .auto-style18 {
            text-align: left;
            height: 29px;
        }
       

        .auto-style19 {
            margin-bottom: 80;
        }
       

        .auto-style20 {
            width: 180px;
            height: 9px;
        }
        .auto-style21 {
            width: 26px;
            height: 9px;
        }
        .auto-style22 {
            width: 27px;
            height: 9px;
        }
        .auto-style23 {
            width: 180px;
            height: 1px;
        }
        .auto-style24 {
            width: 26px;
            height: 1px;
        }
        .auto-style25 {
            width: 27px;
            height: 1px;
        }
       

        .auto-style26 {
            width: 180px;
            text-align: left;
        }
        .auto-style27 {
            width: 180px;
            text-align: right;
        }
        .auto-style28 {
            width: 180px;
            text-align: right;
            height: 29px;
        }
        .auto-style29 {
            width: 26px;
            height: 29px;
        }
        .auto-style30 {
            width: 180px;
            text-align: left;
            height: 29px;
        }
        .auto-style31 {
            width: 27px;
            height: 29px;
        }
       

        </style>
</head>
<body>
    <form id="form1" runat="server">

       
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
        <a class="nav-link" href="../PatientLogin.aspx"><b class="mnu">PATIENT</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/AboutUs.aspx"><b class="mnu">ABOUT US</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/ContactUs.aspx"><b class="mnu">CONTACT US</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link active" href="../Admin/AdminLogin.aspx"><b class="mnu">ADMIN</b></a>
      </li> 
    </ul>
    
  </div>  
       </nav>
     
     </div>  
       


        <div class="text-center">
            <br />
            <br />
            <table align="center" class="auto-style11">
                <tr>
                    <td colspan="6">
                        <i class="fa fa-clinic-medical fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="Medical Registration"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Medical ID :"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="3">
                        <asp:Label ID="lblMedicalId" runat="server" EnableTheming="True" Font-Bold="True" ForeColor="#000066" Font-Size="Large"></asp:Label>
                        <asp:TextBox ID="TxtIdSearch" runat="server" Width="200px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="Label3" runat="server" Text="Medical Name"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TxtMediName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="Label5" runat="server" Text="Medical Reg. No"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TxtMediRegNo" runat="server" Width="200px"></asp:TextBox>
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
                    <td class="auto-style27">
                        <asp:Label ID="Label4" runat="server" Text="Owner Name"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TxtOwnName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:DropDownList ID="DropGender" runat="server" Width="200px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Trans-Gender</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True">Select Gender</asp:ListItem>
                        </asp:DropDownList>
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
                    <td class="auto-style28">
                        <asp:Label ID="Label19" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:Label ID="Label15" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TxtDOB" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:Label ID="Label28" runat="server" Text="Owner Photo"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileOwnPhoto" runat="server" Width="200px" />
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
                    <td class="auto-style27">
                        <asp:Label ID="Label31" runat="server" Text="Blood Group"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:DropDownList ID="DropBloodGroup" runat="server" Width="200px">
                            <asp:ListItem>A positive (A+)</asp:ListItem>
                            <asp:ListItem>A negative (A-)</asp:ListItem>
                            <asp:ListItem>B positive (B+)</asp:ListItem>
                            <asp:ListItem>B negative (B-)</asp:ListItem>
                            <asp:ListItem>O positive (O+)</asp:ListItem>
                            <asp:ListItem>O negative (O-)</asp:ListItem>
                            <asp:ListItem>AB positive (AB+)</asp:ListItem>
                            <asp:ListItem>AB negative (AB-)</asp:ListItem>
                            <asp:ListItem Selected="True">Select Blood Group</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="Label18" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label9" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TxtMobNo" runat="server" Width="200px" MaxLength="10" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <asp:Label ID="Label30" runat="server" Text="Medical Address"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TxtMediAddr" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:Label ID="Label29" runat="server" Text="Education Certificate"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:FileUpload ID="FileEduCerti" runat="server" Width="200px" />
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
                    <td class="auto-style28">
                        <asp:Label ID="Label20" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TxtUserName" runat="server" Width="200px" CssClass="auto-style19" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:Label ID="Label27" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TxtPass" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
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
                    <td colspan="6">
                        <asp:Label ID="LblMsg" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                     <td colspan="6">
                        <asp:Button ID="BtnInsMedi" runat="server" Text="Submit" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnInsMedi_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnUpMedi" runat="server" Text="Update" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnUpMedi_Click"/>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnDelMedi" runat="server" Text="Delete" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnDelMedi_Click"/>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnClrMedi" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnClrMedi_Click"/>
&nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnShowMedi" runat="server" Text="Show All" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnShowMedi_Click" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnBack" runat="server" Text="Go Back" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" PostBackUrl="~/Admin/AdminWork.aspx"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td colspan="6">
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [MediId], [Name], [RegNo], [OwnerName], [Gender], [DOB], [OwnerPhoto], [MobNo], [MediAddress], [EduCerti], [BloodGroup] FROM [MedicalReg]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
                 




        </div>
       


  

        <table class="w-100">
            <tr>
                <td class="text-center">
                    <asp:GridView ID="GridViewMedi" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MediId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" Visible="False">
                        <AlternatingRowStyle BackColor="Gainsboro" />

                         <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ChkBoxGridviewMedi" runat="server" AutoPostBack="True" OnCheckedChanged="ChkBoxGridviewMedi_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        <Columns>
                            <asp:BoundField DataField="MediId" HeaderText="MediId" ReadOnly="True" SortExpression="MediId" />
                            <asp:BoundField DataField="Name" HeaderText="Medical Name" SortExpression="Name" />
                            <asp:BoundField DataField="RegNo" HeaderText="Medical Reg No" SortExpression="RegNo" />
                            <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" SortExpression="OwnerName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="OwnerPhoto" HeaderText="OwnerPhoto" SortExpression="OwnerPhoto" Visible="false" />
                            <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                            <asp:BoundField DataField="MobNo" HeaderText="Mob No" SortExpression="MobNo" />
                            <asp:BoundField DataField="MediAddress" HeaderText="Medical Address" SortExpression="MediAddress" />
                            <asp:BoundField DataField="EduCerti" HeaderText="Certificate" SortExpression="EduCerti" Visible="false" />
                           
                            <asp:ImageField DataImageUrlField="OwnerPhoto" HeaderText="Photo">
                                <ControlStyle Height="80px" Width="80px" />
                            </asp:ImageField>
                            <asp:ImageField DataImageUrlField="EduCerti" HeaderText="Certificate">
                                <ControlStyle Height="80px" Width="80px" />
                            </asp:ImageField>
                        </Columns>
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
       


  

    </form>
    </body>
</html>
