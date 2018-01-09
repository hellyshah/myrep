<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LandingPage.aspx.cs" Inherits="LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="css/freelancer.min.css" rel="stylesheet" />


    <!-- Custom styles for this template -->
    <link href="css/landing-page.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:#343a40!important;">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#">CODE LIKE A GIRL</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
         
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive" >
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#home">Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#apply">Apply</a>
                        <%--<button id="btnSetting" class="nav-link js-scroll-trigger" onclick="pageRedirect()" runat="server">Settings</button>--%>
            </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#contactus">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <a id="home"></a>
   <header class="intro-header">
      <div class="container">
        <div class="intro-message">
          <img id="myImage" class="img-fluid" src="img/clag-logo-white.png" /> 
          <hr class="intro-divider" />
         <ul class="list-inline intro-social-buttons">
            <li class="list-inline-item">
              <a href="Home.aspx" class="btn btn-outline-secondary btn-lg">LOGIN</a>
            </li>
            <li class="list-inline-item">
              <a href="#apply" class="btn btn-outline-secondary btn-lg">APPLY</a>
            </li>
          </ul>
        </div>
      </div>
    </header>

        <a id="about"></a>
    <!-- Page Content -->
    <section class="content-section-a" style="height:100vh; padding-top:20vh;">

      <div class="container">
        
            <hr class="section-heading-spacer" />
            <div class="clearfix"></div>
            <h2 class="section-heading">ABOUT</h2>
            <p class="lead">
                I’m a great place for you to tell a story and let your users know a little more about you.​​
                This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. ​
                This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. ​
                This is a great space to write long text about your company and your services. You can use this space to go into a little more detail about your company. Talk about your team and what services you provide. 
            </p>
         
      </div>
      <!-- /.container -->
    </section>

        <a id="apply"></a>
    <section class="content-section-b" style="height:100vh;  padding-top:10vh;">
      <div class="container">
            <hr class="section-heading-spacer" />
            <div class="clearfix"></div>
            <h2 class="section-heading mb-2" style="color:white">APPLY</h2>

                
                    <div class="form-inline mt-5">
                        <div class="row w-100" style="margin-right: 0px; margin-left: 0px;">
                        <label class="sr-only" for="txtemail">Email id</label>
                        <div class="input-group w-100 mb-4" >
                          <div class="input-group-addon">Email address</div>
                         <asp:TextBox type="text" ID="txtemail" class="form-control input-md" placeholder="you@example.com" runat="server" />
                        </div>
                            </div>

                        <div class="row w-100 mb-4" style="margin-right: 0px; margin-left: 0px;">
                        <label class="sr-only" for="T_Handle">Twitter Handle</label>
                        <div class="input-group mb-2 col-xs-6 col-sm-6 col-md-6 col-lg-6 p-0 pr-md-2 pr-lg-2" >
                            <div class="input-group-addon"><i class="fa fa-twitter fa-fw"></i></div>
                            <asp:TextBox type="text" name="T_Handle" ID="T_Handle" class="form-control input-md" placeholder="Twitter handle" runat="server" />
                           
                        </div>

                         <label class="sr-only" for="M_Username">Medium Username</label>
                        <div class="input-group mb-2 col-xs-6 col-sm-6 col-md-6 col-lg-6 p-0 pl-md-2 pl-lg-2" style="margin-right: 0px; margin-left: 0px;">
                            <div class="input-group-addon"><i class="fa fa-medium fa-fw"></i></div>
                            <asp:TextBox type="text" name="M_Username" ID="M_Username" class="form-control input-md" placeholder="Medium username" runat="server" />
                        </div>
                        <span style="width:100%;color:white;text-align:right; ">Don't have a Medium profile? Create one <a href="https://medium.com/">here</a> </span>
                        </div>

                        <div class="row w-100" style="margin-right: 0px; margin-left: 0px;">
                        <label class="sr-only" for="txtStoryLink">Link to story</label>
                        <div class="input-group w-100 mb-4">
                          <div class="input-group-addon">Link to story</div>
                         <asp:TextBox type="text"  ID="txtStoryLink" class="form-control input-md" placeholder="www.you.com/yourstory" runat="server" />
                        </div>
                         </div>

                        <div class="w-100" >
                        <label class="sr-only w-100" for="Reason">Why do you want to become a Code Like A Girl writer?</label>
                        <div class="input mb-4">
                        <label class="mb-1" style="color:white;">Why do you want to become a Code Like A Girl writer?</label>
                         <textarea name="Reason" id="Reason" class="form-control input-md w-100" rows="5" placeholder="Why us?" runat="server" />
                        </div>
                         </div>
                         <asp:Button ID="btnSubmit" class="btn btn-outline-secondary" style="border:2px solid white; color:white;" runat="server" OnClick="btnSubmit_Click" Text="Apply" />
                        <br /><br />
                        <div class="row" runat="server" id="divMsg" style="align-content:center; color:white ; font-size:large;"></div>
                        
              </div>

          </div>
      <!-- /.container -->

    </section>
    <!-- /.content-section-b -->
        <a id="contactus"></a>
     <section class="content-section-a" style="height:100vh;  padding-top:20vh;">

      <div class="container" style="height:60vh;">
        
            <hr class="section-heading-spacer" />
            <div class="clearfix"></div>
            <h2 class="section-heading">CONTACT US</h2>
             <div class="row" style="margin-top: 15vh;">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x sr-contact"></i>
            <p>226-581-1356</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">shahdhruva811@gmail.com</a>
            </p>
          </div>
        </div>
         
      </div>
      <!-- /.container -->
   
  

    <!-- Footer -->
    <footer style="background-color:black; bottom:0; height:20vh; ">
      <div class="container">
        <ul class="list-inline">
          <li class="list-inline-item">
            <a href="#">Home</a>
          </li>
          <li class="footer-menu-divider list-inline-item">&sdot;</li>
          <li class="list-inline-item">
            <a href="#about">About</a>
          </li>
          <li class="footer-menu-divider list-inline-item">&sdot;</li>
          <li class="list-inline-item">
            <a href="#services">Apply</a>
          </li>
          <li class="footer-menu-divider list-inline-item">&sdot;</li>
          <li class="list-inline-item">
            <a href="#contact">Contact</a>
          </li>
        </ul>
        <p class="copyright text-muted small">Copyright &copy;Code Like A Girl 2017. All Rights Reserved</p>
      </div>
    </footer>

         <noscript>
        <div id="noscript-warning">Website works best with JavaScript enabled
            <img src="https://pixel.quantserve.com/pixel/p-c1rF4kxgLUzNc.gif" alt="" class="dno"/>
        </div>
    </noscript>
          </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- other scripts-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/freelancer.min.js"></script>

   </form>
</body>
</html>
