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
            margin-right: 0px;
        }
       

        .auto-style10 {
            text-align: center;
        }
       

        .auto-style11 {
            width: 1298px;
        }
*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
       

        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            cursor: pointer;
        }
       

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
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
        <a class="nav-link " href="../Admin/AboutUs.aspx"><b class="mnu">ABOUT US</b></a>
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
       


            <br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="BtnBack" runat="server" Text="&lt;" Width="49px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="White" style="border-radius:5px;" PostBackUrl="~/Admin/AdminWork.aspx" CssClass="auto-style13" />
                    
     <table class="auto-style11" align="center">
                <tr>
                    <td class="auto-style10">
                        <br />
                        <i class="fa fa-user-md fa-2x"></i>&nbsp;
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Text="Doctors Data" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <div class="auto-style10">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style9" DataKeyNames="DoctorId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%">
                                <AlternatingRowStyle BackColor="Gainsboro" />
                                <Columns>
                                    <asp:BoundField DataField="DoctorId" HeaderText="Doctor Id" ReadOnly="True" SortExpression="DoctorId" />
                                    <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                    <asp:BoundField DataField="MobNo" HeaderText="Mob. No." SortExpression="MobNo" />
                                    <asp:BoundField DataField="WorkAddress" HeaderText="Work Address" SortExpression="WorkAddress" />
                                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                                    <asp:ImageField DataImageUrlField="UploadPhoto" HeaderText="Photo">
                                        <ControlStyle Height="80px" Width="80px" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="UploadCertificate" HeaderText="Certificate">
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
                        </div>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [DoctorId], [FullName], [Gender], [BloodGroup], [DOB], [MobNo], [UploadCertificate], [WorkAddress], [Specialization], [UploadPhoto] FROM [DoctorReg]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="text-center"><br /><i class="fa fa-user-nurse fa-2x"></i>&nbsp;
                     <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Overline="False" Text="Receptionists Data" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <div class="auto-style10">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="RecepId" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="100%">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="RecepId" HeaderText="Recep. Id" ReadOnly="True" SortExpression="RecepId" />
                                    <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                    <asp:BoundField DataField="MobNo" HeaderText="Mob. No." SortExpression="MobNo" />
                                    <asp:BoundField DataField="WorkAddress" HeaderText="Work Address" SortExpression="WorkAddress" />
                                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                                    <asp:ImageField DataImageUrlField="UploadPhoto" HeaderText="Photo">
                                        <ControlStyle Height="80px" Width="80px" />
                                    </asp:ImageField>
                                    <asp:ImageField DataImageUrlField="UploadCertificate" HeaderText="Certificate">
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
                        </div>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [RecepId], [FullName], [Gender], [BloodGroup], [DOB], [MobNo], [UploadCertificate], [WorkAddress], [Specialization], [UploadPhoto] FROM [ReceptionistReg]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="text-center"><br /><i class="fa fa-clinic-medical fa-2x"></i>&nbsp;
                     <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Overline="False" Text="Medicals Data" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <div class="auto-style10">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MediId" DataSourceID="SqlDataSource5" GridLines="Vertical" Width="100%">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="MediId" HeaderText="MediId" ReadOnly="True" SortExpression="MediId" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="RegNo" HeaderText="Reg.No." SortExpression="RegNo" />
                                    <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" SortExpression="OwnerName" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                                    <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                                    <asp:BoundField DataField="MediAddress" HeaderText="Medical Address" SortExpression="MediAddress" />
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
                        </div>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT [MediId], [Name], [RegNo], [OwnerName], [Gender], [DOB], [OwnerPhoto], [BloodGroup], [MobNo], [MediAddress], [EduCerti] FROM [MedicalReg]"></asp:SqlDataSource>
                    </td>
                    <tr>
                    <td class="text-center"><br /><i class="fa fa-comments fa-2x"></i>&nbsp;
                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Overline="False" Text="Comments / Messages" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <div class="auto-style10">
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource4" GridLines="Vertical" Width="100%">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AHSConnectionString2 %>" SelectCommand="SELECT * FROM [ContactUs]"></asp:SqlDataSource>
                    </td>
                </tr>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
           
       
    

        </div>

    </form>
    </body>
</html>
