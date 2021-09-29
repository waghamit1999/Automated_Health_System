<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchOrder.aspx.cs" Inherits="MyFinalProject.SearchOrder" %>

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
            width: 180px;
            height: 26px;
            text-align: left;
        }
        .auto-style18 {
            width: 180px;
            text-align: left;
        }
        .auto-style19 {
            height: 26px;
            text-align: center;
        }
        .auto-style20 {
            height: 15px;
        }
        .auto-style24 {
            width: 180px;
            height: 26px;
            text-align: right;
        }
        .auto-style33 {
            width: 180px;
            height: 25px;
            text-align: center;
        }
        .auto-style34 {
            width: 180px;
            height: 67px;
        }
        .auto-style35 {
            width: 26px;
            height: 67px;
        }
        .auto-style36 {
            width: 180px;
            text-align: left;
            height: 67px;
        }
        .auto-style37 {
            width: 27px;
            height: 67px;
        }
        .auto-style39 {
            width: 180px;
            height: 25px;
        }
        .auto-style40 {
            width: 26px;
            height: 25px;
        }
        .auto-style41 {
            width: 27px;
            height: 25px;
        }
       

        .auto-style42 {
            width: 180px;
            height: 50px;
        }
        .auto-style43 {
            width: 26px;
            height: 50px;
        }
        .auto-style44 {
            width: 180px;
            text-align: left;
            height: 50px;
        }
        .auto-style45 {
            width: 27px;
            height: 50px;
        }
       

        .auto-style46 {
            width: 180px;
            text-align: center;
        }
        .auto-style47 {
            width: 180px;
            height: 15px;
        }
        .auto-style48 {
            width: 26px;
            height: 15px;
        }
        .auto-style49 {
            width: 27px;
            height: 15px;
        }
       

        .auto-style50 {
            width: 180px;
            height: 5px;
        }
        .auto-style51 {
            width: 26px;
            height: 5px;
        }
        .auto-style52 {
            width: 27px;
            height: 5px;
        }
        .auto-style53 {
            width: 180px;
            height: 10px;
        }
        .auto-style54 {
            width: 26px;
            height: 10px;
        }
        .auto-style55 {
            width: 27px;
            height: 10px;
        }
        .auto-style56 {
            height: 10px;
        }
        .auto-style57 {
            width: 180px;
            height: 15px;
            text-align: left;
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
        <a class="nav-link active" href="../Medical/MedicalLogin.aspx"><b class="mnu">MEDICAL</b></a>
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
            <asp:Label ID="lblDate_Time" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
            <br />
            <table align="center" class="auto-style11">
                <tr>
                    <td colspan="6" class="text-center">
                        <i class="fa fa-user-tag fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="MEDICINE ORDER"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style41"></td>
                    <td class="auto-style46" rowspan="3">
                        <asp:Image ID="Image1" runat="server" Height="134px" Width="114px" />
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style41"></td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="Label30" runat="server" Text="Token ID" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style35">
                        <asp:Label ID="Label29" runat="server" Text=":" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="TxtSeToken" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style36">
                        <asp:Button ID="BtnSeTk" runat="server" Text="Search" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnSeTk_Click" />
                    </td>
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style33">
                        <asp:Label ID="lblErrorTK" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style39"></td>
                    <td class="auto-style41"></td>
                    <td class="auto-style33">
                        <asp:Button ID="BtnShowPic" runat="server" Text="ShowPhoto" Width="109px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" ForeColor="White" style="border-radius:5px;" Height="28px" OnClick="BtnShowPic_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Text="Patient ID "></asp:Label>
                    </td>
                    <td class="auto-style43">
                        <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style44">
                        <asp:Label ID="lblPatientId" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style42">
                        <asp:Label ID="Label3" runat="server" Text="Full Name"></asp:Label>
                    </td>
                    <td class="auto-style45">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style44">
                        <asp:Label ID="lblName" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53"></td>
                    <td class="auto-style54"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style55"></td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label18" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblDOB" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label5" runat="server" Text="Problem"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblProblem" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53"></td>
                    <td class="auto-style54"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style55"></td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label" runat="server" Text="Doctor Name"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="lblRecDoctor" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label32" runat="server" Text="Medicines"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label53" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="lblMedicines" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style56">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label20" runat="server" Text="Medical Name"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label33" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMediName" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label48" runat="server" Text="Medicine Delivery Address"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label52" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblAddress" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53"></td>
                    <td class="auto-style54"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style53"></td>                        
                    <td class="auto-style55"></td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label34" runat="server" Text="Want Medicine Delivery"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label50" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblDeliOpt" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="Label49" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label51" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMobNo" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53"></td>
                    <td class="auto-style54"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style53"></td>                        
                    <td class="auto-style55"></td>
                    <td class="auto-style53"></td>
                </tr>
                 <tr>
                    <td class="auto-style24">
                        <asp:Label ID="lblDeliBoyNM" runat="server" Text="Delivery Boy Name" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label6" runat="server" Text=":" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TxtDeliBoyNM" runat="server" Visible="False" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="lblDeliBoyMobNo" runat="server" Text="Delivery Boy Phone Number" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label9" runat="server" Text=":" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TxtDeliBoyMobNo" runat="server" MaxLength="10" TextMode="Phone" Visible="False" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50"></td>
                    <td class="auto-style51"></td>
                    <td class="auto-style50"></td>
                    <td class="auto-style50"></td>                        
                    <td class="auto-style52"></td>
                    <td class="auto-style50"></td>
                </tr>
                <tr>
                    <td class="auto-style47"></td>
                    <td class="auto-style48"></td>
                    <td class="auto-style20" colspan="2">
                        <asp:Label ID="lblfess" runat="server" Text="Fees" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style49">
                        <asp:Label ID="Label54" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="TxtMediFees" runat="server" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" colspan="6">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#00B700"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="text-center">
                        <br />
                        <asp:Button ID="BtnDone" runat="server" Text="Done" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnDoneOrder_Click" />
                         &nbsp;&nbsp;&nbsp;                                            
                        <asp:Button ID="BtnShow" runat="server" Text="Show Data" Width="114px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnShow_Click"/>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnClearTxt" runat="server" Text="Clear" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnClearTxt_Click"/>
                         &nbsp;&nbsp;&nbsp;                       
                        <asp:Button ID="BtnBack" runat="server" Text="Go Back" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" PostBackUrl="~/Medical/MedicalWork.aspx" />
                    </td>
                </tr>
            </table>
                 




        </div>
       


  

        <table class="w-100">
            <tr>
                <td class="auto-style19">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Visible="False" Width="100%">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="TokenId" HeaderText="TokenId" SortExpression="TokenId" />
                            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
                            <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
                            <asp:BoundField DataField="Name" HeaderText="Patient Name" SortExpression="Name" />
                            <asp:BoundField DataField="DOB" HeaderText="Birth Date" SortExpression="DOB" />
                            <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                            <asp:BoundField DataField="RecDoctor" HeaderText="Doctor Name" SortExpression="RecDoctor" />
                            <asp:BoundField DataField="Medicines" HeaderText="Medicines" SortExpression="Medicines" />
                            <asp:BoundField DataField="MedicalName" HeaderText="Medical Name" SortExpression="MedicalName" />
                            <asp:BoundField DataField="Address" HeaderText="Patient Address" SortExpression="Address" />
                            <asp:BoundField DataField="MedicineDelivery" HeaderText="Delivery Option" SortExpression="MedicineDelivery" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT * FROM [TempMedicalData]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
       


  

    </form>
    </body>
</html>