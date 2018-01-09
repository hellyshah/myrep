<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
 
    <!-- Latest compiled and minified CSS -->
  <%--  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" />--%>

    <!-- Optional theme -->
    <%--<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css" />--%>

    <!-- Latest compiled and minified JavaScript -->
 


     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css"/>

    <!-- Custom styles for this template -->
   
     <link href="css/freelancer.min.css" rel="stylesheet" />
    <link href="css/freelancer.css" rel="stylesheet" />

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
      <%-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>--%>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Code Like A Girl</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">Dashboard</a>
            </li>                      
              <li class="nav-item">
                  <a class="nav-link js-scroll-trigger" href="UserProfile.aspx?userid=1">Profile</a>
              <%--<button id="btnSetting" class="nav-link js-scroll-trigger" onclick="pageRedirect()" runat="server">Settings</button>--%>
            </li>
               <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
   <div class="container">
       
        <div class="row centered-form" style="margin-top: 15%;">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" id="divHead" runat="server">Your Profile</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">


                            <div class="form-group">
                                <asp:TextBox type="text" name="email" ID="txtemail" class="form-control input-md" placeholder="Email Address" runat="server" ReadOnly="true" />
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox type="text" name="T_Handle" ID="T_Handle" class="form-control input-md" placeholder="Twitter Handle" runat="server" ReadOnly="true" />
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox type="text" name="M_Username" ID="M_Username" class="form-control input-md" placeholder="Medium Username" runat="server" ReadOnly="true" />
                                    </div>
                                </div>
                            </div>
                            <div id="divView" runat="server">
                            <asp:Button ID="btnEdit" runat="server" class="btn btn-block btncolor" OnClick="btnEdit_Click"  Text="Edit Profile"/>
                            <asp:Button ID="btnDelete" runat="server" class="btn btn-block btncolor" OnClick="btnDelete_Click"  Text="Delete Profile"/>
                            </div>
                            <div id="divEdit" runat="server" style="display:none;">
                            <asp:Button ID="btnSave" runat="server" class="btn btn-block btncolor" OnClick="btnSave_Click"  Text="Save Changes" />
                            <asp:Button ID="btnClose" runat="server" class="btn btn-block btncolor" OnClick="btnClose_Click"  Text="Close" />
                            </div>
                        </form>

                       
                    </div>
                </div>
            </div>
        </div>

        <div class="row" runat="server" id="divMsg" style="align-content:center;background-color:#ededed;color:green;width:31%;font-size:x-large;"></div>

    </div>
</body>
</html>
