<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecepChangePass.aspx.cs" Inherits="MyFinalProject.Receptionist.RecepChangePass" %>

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
  width: 33.33%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

        .auto-style2 {
            height: 26px;
            text-align: left;
            width: 248px;
        }
        .auto-style4 {
            height: 26px;
            width: 270px;
            text-align: center;
        }
        .auto-style5 {
            width: 270px;
            text-align: center;
            height: 29px;
        }
        .auto-style6 {
            height: 77px;
            text-align: center;
        }

        .auto-style7 {
            text-align: left;
            width: 248px;
            height: 29px;
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
       

        .auto-style12 {
            text-align: center;
            height: 26px;
        }
       

        .auto-style13 {
            text-align: center;
            height: 18px;
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
 


     <div class="active" style="background-color:#FFFFFF; height:528px;">
         <br/><br/><br/><br/>


         <div style="border:5px solid darkblue;border-radius:20px;width:430px;margin-left:480px">
         <table class="active" align="center" style="padding: 5px;  background-color: #FFFFFF; font-family: 'Times New Roman', Times, serif; width: 383px; height: 298px;">
             <tr>
                 <td colspan="2" class="auto-style6">
                     <br /><i class="fa fa-unlock-alt fa-2x"></i>&nbsp;
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Text="CHANGE PASSWORD" Font-Names="Times New Roman" Font-Size="XX-Large"></asp:Label>
                     <br />
                     <br />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">
                     <asp:Label ID="Label2" runat="server" Text="Receptionist ID" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066"></asp:Label>
                     <strong>:</strong></td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TxtRecepId" runat="server" Width="170px"></asp:TextBox>
                 </td>
             </tr>
              <tr>
                 <td class="auto-style4">
                     &nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
             </tr>
              <tr>
                 <td class="auto-style4">
                     <asp:Label ID="Label6" runat="server" Text="Old Password" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066"></asp:Label>
                     <strong>:</strong></td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TxtRecepOldPass" runat="server" Width="170px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="text-center">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066"></asp:Label>
                     <strong>:</strong></td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtRecepNewPass" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style12">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">
                     <asp:Label ID="Label4" runat="server" Text="Conform Password" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066"></asp:Label>
                     <strong>:</strong></td>
                 <td class="auto-style7">
                     <asp:TextBox ID="TxtRecepConPass" runat="server" TextMode="Password" Width="170px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style13">
                     <br />
                     <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Medium" ></asp:Label>
                     </td>
             </tr>
             <tr>
                 <td colspan="2" class="active" style="text-align: center">
                     <br />
                     <asp:Button class="loghov" ID="BtnRecepChangePass" runat="server" Text="UPDATE" BackColor="#000099" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" Width="91px" Style="border:medium solid #000099; border-radius:5px; cursor:pointer;" OnClick="BtnRecepChangePass_Click" />
                     <br />
                     <br />
                 </td>
             </tr>
         </table>
         </div>
         

         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         
         

     </div>
     
       


    <div class="auto-style8" style="margin-left:9px;">
         <div class="column" style="width:99%;height:60px;margin:0px 0px 5px 10px;border:5px solid #0066ff;border-radius:15px;background-color:#0066ff;text-align:center;">
             <p style="text-transform:capitalize;font-size:1.3vw;color:white;font-weight:bold;margin-top:3px;">
                 copyright &copy; automatedhealthsystem.com - all rights reserved.all rights reserved.</p>
         </div>
    </div>

    </form>
    </body>
</html>
