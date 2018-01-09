<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewRequest.aspx.cs" Inherits="ViewRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />

    <!-- Custom styles for this template -->

    <link href="css/Home.css" rel="stylesheet" />
    <link href="css/freelancer.min.css" rel="stylesheet" />
    <link href="css/freelancer.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
    
    <!-- Custom css -->
    <link href="css/landing-page.css" rel="stylesheet" />



   <%-- <link href="Main.css" rel="stylesheet" />--%>
    <!-- Latest compiled and minified CSS -->
  

    <!-- Optional theme -->
   <%-- <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css" />

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />--%>


   <%-- <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>--%>
   
</head>
<body>
     <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">Code Like A Girl</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
         
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">EXTERNAL USER
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="EditorList.aspx">Article Editor</a>
                            <a class="dropdown-item" href="ReviewerList.aspx">Article Reviewer</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#portfolio">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="EditorProfile.aspx?userid=1">Profile</a>
                        <%--<button id="btnSetting" class="nav-link js-scroll-trigger" onclick="pageRedirect()" runat="server">Settings</button>--%>
            </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="Registration.aspx">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <form role="form" runat="server">
     <div class="container-fluid">
       
    <section class="content-section-b" style="height:100vh;  padding-top:15vh; background-color:white; background: none;">
      <div class="container">
            <hr class="section-heading-spacer">
            <div class="clearfix"></div>
            <h2 class="section-heading mb-4" style="color:black">VIEW REQUEST</h2>
           
                    <div class="row w-100 mt-5" style="margin-right: 0px; margin-left: 0px;">
                        <label class="sr-only" for="txtRequestEmail">Email Id</label>
                        <div class="input-group w-100 mb-1" >
                          <div class="input-group-addon">Email Id</div>
                         <asp:TextBox type="text" ID="txtRequestEmail" class="form-control input-md" placeholder="Jane Doe" runat="server" />
                        </div>
                   
                        
                        <br />

                        <div class="row w-100 mb-1 p-0" style="margin-right: 0px; margin-left: 0px;color:black">
                            <label class="sr-only" for="txtTwitterHandle">Twitter Handle</label>
                            <div class="input-group mb-2 col-xs-6 col-sm-6 col-md-6 col-lg-6 p-0 pr-md-2 pr-lg-2" >
                                <div class="input-group-addon"><i class="fa fa-twitter fa-fw"></i></div>
                                <asp:TextBox type="text" name="T_Handle" ID="txtTwitterHandle" class="form-control input-md" placeholder="Twitter handle" runat="server" />
                            </div>
                            <br />

                             <label class="sr-only" for="txtMediumUsername">Medium Username</label>
                            <div class="input-group mb-2 col-xs-6 col-sm-6 col-md-6 col-lg-6 p-0 pl-md-2 pl-lg-2" style="margin-right: 0px; margin-left: 0px;">
                                <div class="input-group-addon"><i class="fa fa-medium fa-fw"></i></div>
                                <asp:TextBox type="text" name="M_Username" ID="txtMediumUsername" class="form-control input-md" placeholder="Medium username" runat="server" />
                            </div>
                            <br />
                           
                        </div>

                        <div class="row w-100" style="margin-right: 0px; margin-left: 0px;">
                        <label class="sr-only" for="txtStoryLink">Link to story</label>
                        <div class="input-group w-100 mb-4">
                          <div class="input-group-addon">Link to story</div>
                         <asp:TextBox type="text"  ID="txtStoryLink" class="form-control input-md" placeholder="www.you.com/yourstory" runat="server" />
                        </div>
                         </div>

                        <div class="w-100" >
                        <label class="sr-only w-100" for="Reason">Reason to join</label>
                        <div class="input mb-4">
                        <label class="mb-1" style="color:white;">Reason to join</label>
                         <textarea name="Reason" id="txtReason" class="form-control input-md w-100" rows="5" placeholder="Why us?" runat="server" />
                        </div>
                         </div>

                        <%--<div class="col-12 w-100 mb-4 text-center" style="margin-right: 0px; margin-left: 0px; margin-top:6vh;">
                            <asp:Button type="button" ID="btnAdd" class="btn btn-outline-secondary" style="border:2px solid black; background-color:transparent; color:black; margin-right:10px;" runat="server" OnClick="btnSubmit_Click" Text="Add" />
                            <asp:Button ID="btnCancel" class="btn btn-outline-secondary" style="border:2px solid black;  background-color:transparent; color:black;" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                        </div>--%>

                      

                        <div id="ViewFooter" runat="server" class="col-12 w-100 mb-4 text-center clsDspNone" style="margin-right: 0px; margin-left: 0px; margin-top:6vh;">
                            <asp:Button type="button" ID="btnAccept" class="btn btn-outline-secondary" style="border:2px solid black; background-color:transparent; color:black; margin-right:10px;" runat="server" OnClick="btnAccept_Click" Text="Accept" />
                            <asp:Button  type="button" ID="btnReject" class="btn btn-outline-secondary" style="border:2px solid black;  background-color:transparent; color:black;" runat="server" OnClick="btnReject_Click" Text="Reject" />
                        </div>


                        <br /><br />
                        <div class="row" runat="server" id="divMsg" style="align-content:center; color:black ; font-size:x-large;"></div>
                        
              </div>

          </div>
      <!-- /.container -->

    </section>

    </div>

        <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</form>
</body>
</html>
