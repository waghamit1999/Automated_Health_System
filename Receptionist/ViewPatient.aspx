<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatient.aspx.cs" Inherits="MyFinalProject.ViewPatient" %>

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
        <a class="nav-link active" href="../Receptionist/ReceptionistLogin.aspx"><b class="mnu">RECEPTATIONIST</b></a>
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
       

        <br />
        <table class="w-100">
            <tr>
               <td class="text-center"><i class="fa fa-ticket-alt fa-2x"></i>&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="PATIENT TOKENS"></asp:Label></td>
            </tr>
        </table>
       

        <br />

       


  
        <table class="w-100">
            <tr>
                <td class="text-center">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="100%">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="TokenId" HeaderText="TokenId" SortExpression="TokenId" />
                            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
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
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT * FROM [TempToken]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>

       


  
        <br />
        <table class="w-100">
            <tr>
                <td class="text-center"><i class="fa fa-file-medical fa-2x"></i>&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="PRESCRIPTIONS"></asp:Label></td>
            </tr>
        </table>

       <br />


  
        <div class="text-center">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="TokenId" HeaderText="TokenId" SortExpression="TokenId" />
                    <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
                    <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                    <asp:BoundField DataField="RecDoctor" HeaderText="RecDoctor" SortExpression="RecDoctor" />
                    <asp:BoundField DataField="Medicines" HeaderText="Medicines" SortExpression="Medicines" />
                    <asp:BoundField DataField="MedicalName" HeaderText="Medical Name" SortExpression="MedicalName" />
                    <asp:BoundField DataField="Fees" HeaderText="Fees" SortExpression="Fees" />
                    <asp:BoundField DataField="MedicineDelivery" HeaderText="Delivery Opt" SortExpression="MedicineDelivery" />
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

       


  
        <table class="w-100">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT * FROM [AddPrescription]"></asp:SqlDataSource>
                </td>
            </tr>
           
        </table>

       


  
        <br />
        <table class="w-100">
            <tr>
                <td class="text-center"><i class="fa fa-list-alt fa-2x"></i>&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="PATIENT LIST"></asp:Label></td>
            </tr>
        </table>

       


  
        <br />
        <table class="w-100">
            <tr>
                <td class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="PatientId" HeaderText="PatientId" ReadOnly="True" SortExpression="PatientId" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Blood" HeaderText="Blood" SortExpression="Blood" />
                            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [PatientId], [Name], [DOB], [Gender], [Blood], [MobNo], [Address], [Education], [Photo] FROM [PatientReg]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
       


       


  

    </form>
    </body>
</html>