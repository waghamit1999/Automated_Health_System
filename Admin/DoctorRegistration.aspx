<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorRegistration.aspx.cs" Inherits="MyFinalProject.DoctorRegistration" %>

<!DOCTYPE html>
<script runat="server">



   
</script>


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
       

        .auto-style10 {
            width: 26px;
            text-align: center;
        }
        .auto-style11 {
            width: 71%
        }
       

        .auto-style12 {
            width: 27px;
            text-align: center;
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
            width: 180px;
            height: 9px;
        }
        .auto-style18 {
            width: 26px;
            height: 9px;
        }
        .auto-style19 {
            width: 27px;
            height: 9px;
        }
       

        .auto-style20 {
            width: 180px;
            height: 1px;
        }
        .auto-style21 {
            width: 26px;
            height: 1px;
        }
        .auto-style22 {
            width: 27px;
            height: 1px;
        }
       

        .auto-style25 {
            width: 180px;
            text-align: right;
        }
       

        .auto-style26 {
            height: 26px;
            text-align: center;
        }
       

        .auto-style27 {
            height: 50px;
            text-align: center;
        }
       

        .auto-style28 {
            width: 180px;
            text-align: center;
        }
        .auto-style30 {
            width: 180px;
            height: 26px;
            text-align: center;
        }
        .auto-style31 {
            width: 180px;
            text-align: left;
        }
               

        .auto-style32 {
            height: 26px;
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
            <table align="center" class="auto-style11" >
                <tr>
                    <td colspan="6" class="auto-style27">
                        <i class="fa fa-user-md fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="Doctor Registration"></asp:Label>
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
                    <td class="text-right" colspan="3">
                        <asp:Label ID="Lbl" runat="server" Font-Bold="True" Text="Doctor ID :" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="text-left" colspan="3">
                        <asp:Label ID="lblDoctorId" runat="server" EnableTheming="True" Font-Bold="True" ForeColor="#000066" Font-Size="Large"></asp:Label>
                        <asp:TextBox ID="TxtIdSearch" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtfullName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
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
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label18" runat="server" Text="Blood Group"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
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
                    <td class="auto-style25">
                        <asp:Label ID="Label29" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtDOB" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtMobNo" runat="server" Width="200px" MaxLength="10" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label9" runat="server" Text="Upload Degree Certificate"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label10" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:FileUpload ID="FileUpDegCer" runat="server" Width="235px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label15" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtAddress" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label19" runat="server" Text="Clinic/ Hospital Address"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtWorkAddress" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label30" runat="server" Text="Specialization"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtSpecialization" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label28" runat="server" Text="Upload Your Photo"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:FileUpload ID="FilePhoto" runat="server" Width="235px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label20" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtUserName" runat="server" Width="200px" ReadOnly="True" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="Label22" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label27" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TxtPass" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
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
                    <td colspan="6" class="auto-style26">
                        <asp:Label ID="LblMsg" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="6">
                        <br />
                        <asp:Button ID="BtnInDr" runat="server" Text="Submit" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnInDr_Click"  />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnUpDr" runat="server" Text="Update" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnUpDr_Click"/>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnDeDr" runat="server" Text="Delete" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnDeDr_Click"/>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnClrDr" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnClrDr_Click"/>
&nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnShowAll" runat="server" Text="Show Data" Width="109px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnShowAll_Click"/>
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnBack" runat="server" Text="Go Back" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" PostBackUrl="~/Admin/AdminWork.aspx" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style32">
                        
                        
                        
                    </td>
                </tr>
                  <tr>
                    <td colspan="6" >
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [DoctorId], [FullName], [Gender], [BloodGroup], [DOB], [MobNo], [UploadCertificate], [Address], [WorkAddress], [Specialization], [UploadPhoto] FROM [DoctorReg]"></asp:SqlDataSource>
                      </td>
                        </tr>
            </table>
                 




        </div>
       


  

        <table align="center" class="w-100">
            <tr>
                <td class="text-center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="DoctorId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%" Visible="False">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ChkBoxGridview" runat="server" OnCheckedChanged="ChkBoxGridview_CheckedChanged" AutoPostBack="True" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:BoundField DataField="DoctorId" HeaderText="Id" ReadOnly="True" SortExpression="DoctorId" />
                                <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="BloodGroup" HeaderText="Blood G" SortExpression="BloodGroup" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="WorkAddress" HeaderText="Work Address" SortExpression="WorkAddress" />
                                <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                                <asp:ImageField DataImageUrlField="UploadPhoto" HeaderText="Photo">
                                    <ControlStyle Height="50px" Width="50px" />
                                </asp:ImageField>
                                <asp:ImageField DataImageUrlField="UploadCertificate" HeaderText="Certificate">
                                    <ControlStyle Height="50px" Width="50px" />
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
            <tr>&nbsp;</tr>
        </table>
       


  

    </form>
    </body>
</html>
