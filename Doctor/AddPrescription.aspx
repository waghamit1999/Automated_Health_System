<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPrescription.aspx.cs" Inherits="MyFinalProject.AddPrescription" %>

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
            width: 64%
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
            height: 26px;
        }
       

        .auto-style18 {
            width: 180px;
            height: 26px;
            text-align: left;
        }
        .auto-style19 {
            width: 180px;
            text-align: left;
        }
       

        .auto-style20 {
            height: 5px;
        }
        .auto-style21 {
            width: 180px;
            text-align: center;
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
        <a class="nav-link active" href="../Doctor/DoctorLogin.aspx"><b class="mnu">DOCTOR</b></a>
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
        <a class="nav-link" href="../Admin/AdminLogin.aspx"><b class="mnu">ADMIN</b></a>
      </li> 
    </ul>
    
  </div>  
       </nav>
     
     </div>  
       


        <div class="text-right">
                        <asp:Label ID="lblDateTime" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
            <br />
            <table align="center" class="auto-style11">
                <tr>
                    <td colspan="6" class="text-center">
                        <i class="fa fa-user-plus fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="Patient Prescription"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" colspan="3">
                        &nbsp;</td>
                    <td class="text-left" colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label30" runat="server" Text="Token ID" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label29" runat="server" Text=":" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TxtSeTokenId" runat="server" Width="200px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="BtnSearchTk" runat="server" Text="Search" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnSearchTk_Click" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Image ID="Image1" runat="server" Height="81px" Width="87px" />
                        <asp:Label ID="lblPatientAddress" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="BtnShow" runat="server" Text="Show Image" Width="87px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Smaller" ForeColor="White" style="border-radius:5px;" OnClick="BtnShow_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style21">
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="Patient ID "></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblPatientId" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblName" runat="server" Font-Bold="True" ForeColor="#480000"></asp:Label>
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
                    <td class="auto-style9">
                        <asp:Label ID="Label18" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblDOB" runat="server" Font-Bold="True" ForeColor="#480000"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label5" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblWeight" runat="server" Font-Bold="True" ForeColor="#480000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-sty&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label20" runat="server" Text="Medical Problem"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblProblem" runat="server" Font-Bold="True" ForeColor="#480000"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label31" runat="server" Text="Recommonded Doctor"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="lblRecDoct" runat="server" Font-Bold="True" ForeColor="#480000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style20">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="6">
                        <hr style="color:gray;height:2px;"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label32" runat="server" Text="Medicines"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label33" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtMedicines" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label34" runat="server" Text="Choose Medical"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label35" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropMediName" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label37" runat="server" Text="Fees"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label38" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TxtFees" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label36" runat="server" Text="Medicines Home Delivery"></asp:Label>
                    </td>
                    <td class="auto-style16"></td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDelivery" runat="server" Width="200px">
                            <asp:ListItem Selected="True">Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="text-center">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#00AE00"></asp:Label>
                        <br />
                        
                        <br />
                        <asp:Button ID="BtnAddPres" runat="server" Text="Add Prescription" Width="160px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnAddPres_Click" />
                         &nbsp;&nbsp;&nbsp;                                            
                        <asp:Button ID="BtnUpdate" runat="server" Text="Update" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnUpdate_Click"/>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnClear" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;"/>
                         &nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnBack" runat="server" Text="Go Back" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" PostBackUrl="~/Doctor/DoctorWork.aspx" />
                    </td>
                </tr>
            </table>
                 




        </div>
       


  

        <table class="w-100">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [Name] FROM [MedicalReg]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT * FROM [TempToken]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="100%">
                        <AlternatingRowStyle BackColor="#DCDCDC" />

                        <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ChkTempToken" runat="server" AutoPostBack="True" OnCheckedChanged="ChkTempToken_CheckedChanged" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="TokenId" HeaderText="TokenId" SortExpression="TokenId" />
                            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
                            <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                            <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                            <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                            <asp:BoundField DataField="RecDoctor" HeaderText="RecDoctor" SortExpression="RecDoctor" />
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
