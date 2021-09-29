<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MyFinalProject.ContactUs" %>

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
       

        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 13px;
        }
       

        .auto-style4 {
            width: 164px;
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            width: 13px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            text-align: left;
        }
        .auto-style7 {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
            width: 98%;
            height: 89px;
        }
       

        .auto-style8 {
            width: 164px;
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
        <a class="nav-link active" href="../Admin/ContactUs.aspx"><b class="mnu">CONTACT US</b></a>
      </li> 
       <li class="nav-item">
        <a class="nav-link" href="../Admin/AdminLogin.aspx"><b class="mnu">ADMIN</b></a>     
      </li> 
    </ul>
    
  </div>  
       </nav>
     
     </div>  
       


        <div class="text-left">
             <div class="text-center">
             
            
             </div>
            <br />
          <div style="border:5px solid darkblue;border-radius:20px;width:470px;margin-left:480px">
              <table class="w-100">
                  <tr>
                      <td colspan="3"><p class="text-center"><br /><i class="fa fa-comments fa-2x"></i>&nbsp;
                     <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Overline="False" Text="Contact Us" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label>&nbsp;</p>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style8">
                          <asp:Label ID="Label1" runat="server" Text="Enter your name"></asp:Label>
                      </td>
                      <td class="auto-style2">
                        <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
                      </td>
                      <td class="text-left">
                          <asp:TextBox ID="TxtName" runat="server" Width="200px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style2">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style8">
                          <asp:Label ID="Label2" runat="server" Text="Mobile No."></asp:Label>
                      </td>
                      <td class="auto-style2">
                        <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                      </td>
                      <td class="text-left">
                          <asp:TextBox ID="TxtMobNo" runat="server" Width="200px" MaxLength="10" TextMode="Phone"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style2">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style8">
                          <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                      </td>
                      <td class="auto-style2">
                        <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                      </td>
                      <td class="text-left">
                          <asp:TextBox ID="TxtEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style2">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style8">
                          <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label>
                      </td>
                      <td class="auto-style2">
                        <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                      </td>
                      <td class="text-left">
                          <asp:TextBox ID="TxtComm" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style2">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="auto-style4">
                          <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label>
                      </td>
                      <td class="auto-style5">
                        <asp:Label ID="Label27" runat="server" Text=":"></asp:Label>
                      </td>
                      <td class="auto-style6">
                          <asp:TextBox ID="TxtMsg" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style2">&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="3" class="text-center">
                          <asp:Button ID="BtnSend" runat="server" Text="SUBMIT" Width="100px" BackColor="#000066" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="White" style="border-radius:5px;" OnClick="BtnSend_Click" />
                      </td>
                  </tr>
                  <tr>
                      <td colspan="3" class="text-center">
                          <br />
                          <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
                      </td>
                  </tr>
              </table>
         </div></div>
       

        <br />
  
        <div class="auto-style7" style="margin-left:9px;">
         <div class="column" style="width:99%;height:60px;margin:0px 0px 5px 10px;border:5px solid #0066ff;border-radius:15px;background-color:#0066ff;text-align:center;">
             <p style="text-transform:capitalize;font-size:1.3vw;color:white;font-weight:bold;margin-top:3px;">copyright &copy; automatedhealthsystem.com - all rights reserved.</p>
         </div>
    </div>
    </form>
    </body>
</html>