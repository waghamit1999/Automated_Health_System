<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyFinalProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
        <a class="nav-link active" href="../Home.aspx"><b class="mnu">HOME</b></a>
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
        <a class="nav-link" href="../Admin/AdminLogin.aspx"><b class="mnu">ADMIN</b></a>
      </li> 
    </ul>
    
  </div>  
</nav>
     
     </div>
 
   
        
     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin:5px 5px 5px 5px;">
      <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"  style="border:2px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="6" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="7" style="border:1px white solid;"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="8" style="border:1px white solid;"></li>
      </ol>

    <div class="carousel-inner" style="border: 5px solid darkblue;border-radius:50px;">
           <div class="carousel-item active ">
              <img class="imgslidestyle d-block w-100" src="Images/11.jpg" alt="First slide" style="opacity:0.6;height:595px;" />
                <div class="stxt carousel-caption d-none d-md-block">
                  <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">THE AHS CARE YOU ...</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">When 'I' is replaced by 'We' even illness become Wellness </p>
               </div>
            </div>

           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/22.jpg" alt="Second slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                   <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">BEST FACILITIES</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">Best facilities for out patients</p>
               </div>
            </div>

           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/33.jpg" alt="Third slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                   <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">PROFESSIONAL DOCTORS</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">God is nothing but the Best Doctor to save patients life</p>
               </div>
            </div>
           
           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/44.jpg" alt="fourth slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                  <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">GET UPDATE WITH US</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">Patients are updated by using our service</p>
               </div>
            </div>
           
           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/55.jpg" alt="fifth slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                  <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">BEST DOCTORS TEAM</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">We have best doctors for patients at any time</p>
               </div>
            </div>
           
           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/66.jpg" alt="sixth slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                 <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">E-PRESCRIPTION</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">E-Prescription is directly sendes to the medical</p>
               </div>
            </div>
           
           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/77.jpg" alt="seventh slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                   <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">AHS WITH YOU</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">We are lifeline of your life</p>
               </div>
            </div>
           
           <div class="carousel-item">
              <img class="imgslidestyle d-block w-100" src="Images/88.jpg" alt="eighth slide" style="opacity:0.6;height:595px;"/>
                <div class="carousel-caption d-none d-md-block">
                   <h1 style="color:#191970;font-family:'Times New Roman', Times, serifTimes New Roman;font-size:3vw;font-weight:bold;">E-MEDICAL CENTER</h1>
                  <p style="color:#800080; font-size:1.5vw;font-weight:bold;">Medical shop receive the priscription and deliver your medicines in your home</p>
               </div>
            </div>

     </div>

      
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
</div>


        <div class="row" style="width:98%;margin-left:15px;">
                <div class="column" style="background-color:darkblue;float: left;  width:50%;  padding: 10px;  height: 355px;border: 5px solid white;border-radius:20px;">
                   <div class="imgsetting d-block m-auto">  
                       <p style="font-size:30px;font-weight:bold;color:white;text-align:center;"> <i class="fa fa-cart-plus" aria-hidden="true"></i>&nbsp;SERVICES</p> 
                        <ul style="list-style:none; font-size:1.4vw;color:white;line-height: 200%;letter-spacing: 1px;">
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> 24X7 Specalist Doctors Are Available</li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> Online Patient Registration Is Possible </li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> E-Prescription To Reduce Paperwork </li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> Medicine Deliver To Home If Want </li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> The Emergency Call Service  </li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i> Information About The Doctors  </li>
                           <li style="font-size:1.8vw;text-transform:capitalize;"><i class="fas fa-hand-point-right"></i>  Description Of The Hospital's Departments </li>
                          
                       </ul>
                   </div>
                </div>
                
                <div class="column" style="background-color:darkblue;float: left;  width:50%;  padding: 10px;  height: 355px;border: 5px solid white;border-radius:20px;">
                    <div class="imgsetting d-block m-auto">  
                       <p style="font-size:30px;font-weight:bold;color:white;text-align:center;"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;EMERGENCY CALLS</p>
                        <ul style="list-style:none; font-size:1.4vw;color:white;line-height: 200%;letter-spacing: 1px;">
                           <li style="text-align:center;"><i class="fa fa-phone fa-3x" aria-hidden="true"></i></li>
                           <li style="font-size:2vw;text-align:center;line-height: 200%;font-weight:bold;">1-000-200-300</li>                                           
                           <li style="text-transform:capitalize;font-size:2vw;color:white;text-align:center;line-height: 100%;"><i class="fa fa-hand-point-right"></i> call toll free number only for emergwncy purpose </li>
                           <li style="text-transform:capitalize;font-size:1.4vw;color:white;text-align:center;margin-top:1.5vw;"><i class="fa fa-times-circle"></i>do not call without strong reason.</li>
                       </ul>
                   </div>
                </div>
        </div>


     <div class="row" style="width:98%;margin-left:15px; margin-top:5px;">
            <div class="column" style="height:270px;background-color:#C7FAFF;border:5px solid white;border-radius:20px;">
            
               <a href="#"><p style="text-align:center;margin-top:2vw;color:black;"><i class="fa fa-calendar-check fa-7x"></i></p></a> 
                <p style="text-align:center;font-size:3vw;font-weight:bold;text-transform:uppercase;color:black;">appointments</p>
            </div>

        <div class="column" style="height:270px;background-color:#C7FAFF;border:5px solid white;border-radius:20px;">
            
                <a href="#"><p style="text-align:center;margin-top:2vw;color:black;"><i class="fa fa-notes-medical fa-7x"></i></p></a>
                <p style="text-align:center;font-size:3vw;font-weight:bold;text-transform:uppercase;color:black;">notices</p>
        </div>

        <div class="column" style="height:270px;background-color:#C7FAFF;border:5px solid white;border-radius:20px;">
           
               <a href="#"> <p style="text-align:center;margin-top:2vw;color:black;"><i class="fa fa-edit fa-7x"></i></p></a>
                <p style="text-align:center;font-size:3vw;font-weight:bold;text-transform:uppercase;color:black;">updates</p>
        </div>
    </div>

    <div class="row" style="width:98%;margin-left:9px;">
         <div class="column" style="width:99%;height:60px;margin:0px 0px 5px 10px;border:5px solid #0066ff;border-radius:15px;background-color:#0066ff;text-align:center;">
             <p style="text-transform:capitalize;font-size:1.3vw;color:white;font-weight:bold;margin-top:3px;">copyright &copy; automatedhealthsystem.com - all rights reserved.</p>
         </div>
    </div>

    </form>
    </body>
</html>
