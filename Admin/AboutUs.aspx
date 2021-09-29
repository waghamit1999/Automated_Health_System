<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="MyFinalProject.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="uuid4GZySOQcxscm" name="uuid" />
    <meta charset="utf-8" />
    <meta content="uuid4GZySOQcxscm" name="uuid" />
    <meta charset="utf-8" />
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
            width: 65%
        }
        .auto-style2 {
            height: 26px;
            text-align: justify;
        }
        .auto-style3 {
            color: #3366FF;
            font-size: small;
        }
       

        .auto-style4 {
            height: 26px;
            text-align: center;
        }
       

        .auto-style5 {
            font-size: large;
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
        <a class="nav-link active" href="../Admin/AboutUs.aspx"><b class="mnu">ABOUT US</b></a>
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
       


        <div class="text-center">
            <br />
            <table align="center" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#000066" Text="Automated Health System"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>&#39;We Are For You&#39;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-family:'Times New Roman';line-height: 2.0;">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style5">&nbsp;Hello, we are the team of AHS that is&nbsp;Automated Health System&nbsp;and Welcome to </span> <strong><em><span class="auto-style5">Automated Health System</span></em></strong><span class="auto-style5">, your number one source for Clinic, Hospitals, and healthcare centers. We&#39;re dedicated to giving you the very best facilities, with a focus on the necessity of patients, doctors, and medicals. 
                        </span> 
                        <br class="auto-style5" />
                        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><em><span class="auto-style5">AHS Founded in 2020- 2021 by&nbsp;MR AMit WAghmare</span></em><span class="auto-style5">, Automated Health System has come a long way from its beginnings in 2021. So that Automated Health System can offer automatic data manager for patients and hospitals. So easily this system will help users to go digital and smart work and, also it reduces paperwork to make our work paperwork so it helps the environment. </span> 
                        <br class="auto-style5" />
                        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I hope you enjoy our platform as much as I enjoy. If you have any questions or comments, please don&#39;t hesitate to contact us.</span> <br />
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family:'Times New Roman';"><span class="auto-style5">Sincerely, 
                        </span> 
                        <br class="auto-style5" />
                        <span class="auto-style5">MR. AMit A WAghmare</span></td>
                </tr>
            </table>
            <br />
            <br />
            </div>
       


  
        <div class="row" style="width:98%;margin-left:9px;">
         <div class="column" style="width:99%;height:3.5vw;margin:0px 0px 5px 10px;border:5px solid #0066ff;border-radius:15px;background-color:#0066ff;text-align:center;">
             <p style="text-transform:capitalize;font-size:1.3vw;color:white;font-weight:bold;margin-top:0px;">copyright &copy; automatedhealthsystem.com - all rights reserved.</p>
         </div>
    </div>
    </form>
    </body>
</html>