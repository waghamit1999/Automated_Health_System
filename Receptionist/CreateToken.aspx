<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateToken.aspx.cs" Inherits="MyFinalProject.CreateToken" %>

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
       

        .auto-style10 {
            width: 26px;
        }
        .auto-style11 {
            width: 53%
        }
       

        .auto-style12 {
            width: 27px;
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
            height: 4px;
        }
       

        .auto-style19 {
            width: 125px;
            text-align: right;
        }
        .auto-style20 {
            width: 112px;
            text-align: left;
        }
        .auto-style24 {
            width: 125px;
        }
        .auto-style25 {
            width: 125px;
            height: 26px;
        }
        .auto-style26 {
            width: 125px;
            text-align: right;
            height: 26px;
        }
        .auto-style31 {
            width: 155px;
            text-align: left;
            height: 26px;
        }
        .auto-style32 {
            width: 155px;
            text-align: left;
        }
        .auto-style33 {
            width: 155px;
        }
        .auto-style34 {
            width: 155px;
            height: 26px;
        }
        .auto-style35 {
            width: 112px;
        }
        .auto-style36 {
            width: 112px;
            text-align: right;
            height: 26px;
        }
        .auto-style37 {
            width: 112px;
            height: 26px;
        }
        .auto-style38 {
            width: 112px;
            text-align: right;
        }
        .auto-style39 {
            width: 150px;
            text-align: left;
        }
        .auto-style40 {
            width: 150px;
        }
        .auto-style41 {
            width: 150px;
            text-align: left;
            height: 26px;
        }
        .auto-style42 {
            width: 150px;
            height: 26px;
        }
       

        .auto-style43 {
            text-align: right;
            height: 6px;
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
        <a class="nav-link active " href="../Receptionist/ReceptionistLogin.aspx"><b class="mnu">RECEPTATIONIST</b></a>
      </li>  
       <li class="nav-item">
        <a class="nav-link" href="../Medical/MedicalLogin.aspx"><b class="mnu">MEDICAL</b></a>
      </li>   
       <li class="nav-item">
        <a class="nav-link" href="../PatientLogin.aspx"><b class="mnu">PATIENT</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link " href="../Admin/AboutUs.aspx"><b class="mnu">ABOUT US</b></a>
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
       


        <div class="text-right">
            <br />
            <asp:Label ID="lblDateTime" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
            <br />
            <table align="center" class="auto-style11">
                <tr>
                    <td colspan="6" class="text-center"><i class="fa fa-user-tag fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="Patient Token"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43" colspan="3"></td>
                    <td class="auto-style43" colspan="3">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Patient ID " Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label29" runat="server" Text=":" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TxtPatientId" runat="server" Width="160px" ></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="BtnSearchPaId" runat="server" Text="Search" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer; height: 39px;" OnClick="BtnSearchPaId_Click" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style32">
                        <asp:Image ID="ImgPatientPic" runat="server" BorderColor="#000066" Height="92px" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style40">
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:Label ID="Label30" runat="server" Text="Token ID" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style41">
                        <asp:Label ID="lblTokenId" runat="server" Font-Bold="True" ForeColor="#000066" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:Label ID="lblName" runat="server" Font-Bold="True" ForeColor="#370000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:Label ID="Label18" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style41">
                        <asp:Label ID="lblDOB" runat="server" Font-Bold="True" ForeColor="#370000"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:Label ID="Label5" runat="server" Text="Blood Group"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:Label ID="lblBlood" runat="server" Font-Bold="True" ForeColor="#370000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style17">
                        <hr style="color:gray;height:2px;"></td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label31" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label32" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TxtWeight" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style38">
                        <asp:Label ID="Label33" runat="server" Text="Occupation"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label34" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TxtOccupation" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label20" runat="server" Text="Medical Problem"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TxtProblem" runat="server" Width="160px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style38">
                        <asp:Label ID="Label35" runat="server" Text="Recommonded Doctor"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style32">
                        <asp:DropDownList ID="DropReDoct" runat="server" Width="160px" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="FullName" Height="25px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="text-center">
                        <br />
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
                        <br /></td>
                </tr>
                <tr>
                    <td colspan="6" class="text-center">
                        <asp:Button ID="BtnCreateToken" runat="server" Text="Create Token" Width="160px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnCreateToken_Click" />
                         &nbsp;&nbsp;&nbsp;                                            
                        <asp:Button ID="BtnClr" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnClr_Click"/>
                         &nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnShow" runat="server" Text="Show All" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" OnClick="BtnShow_Click" />
                    &nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnBack" runat="server" Text="Go Back" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;cursor:pointer;" PostBackUrl="~/Receptionist/ReceptionistWork.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [FullName] FROM [DoctorReg]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
                 




        </div>
       


  

        <table class="w-100">
            <tr>
                <td class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PatientId" DataSourceID="SqlDataSource2" GridLines="Vertical" Visible="False" Width="100%">
                        <AlternatingRowStyle BackColor="#DCDCDC" />

                        <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckPatientDridview" runat="server" AutoPostBack="True" OnCheckedChanged="CheckPatientDridview_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                        </Columns>

                        <Columns>
                            <asp:BoundField DataField="PatientId" HeaderText="PatientId" ReadOnly="True" SortExpression="PatientId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                            <asp:BoundField DataField="Blood" HeaderText="Blood" SortExpression="Blood" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
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
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [PatientId], [Name], [DOB], [Gender], [MobNo], [Photo], [Blood], [Address], [Education] FROM [PatientReg]"></asp:SqlDataSource>
                    <br />
                    <div class="text-center">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Vertical" Visible="False" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="TokenId" HeaderText="TokenId" SortExpression="TokenId" />
                                <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
                                <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                <asp:BoundField DataField="RecDoctor" HeaderText="RecDoctor" SortExpression="RecDoctor" />
                                <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
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
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [Id], [TokenId], [PatientId], [Date_Time], [Name], [DOB], [RecDoctor], [Problem] FROM [TempToken]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
       


  

    </form>
    </body>
</html>
