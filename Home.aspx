<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
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

     <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />
     <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap4.min.css" />
    
    <!-- Custom css -->
    <link href="css/landing-page.css" rel="stylesheet" />




    <link rel="stylesheet" type="text/css" href="css/ListStyle.css" />
 
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta/css/bootstrap.css" />
    


    <script src="js/Script.js"></script>
    <script>
        $(document).ready(function () {
            //$('#myTable').DataTable({
            //    responsive: {
            //        details: {
            //            type: 'column',
            //            target: 'tr'
            //        }
            //    },
            //    columnDefs: [{
            //        className: 'control',
            //        orderable: false,
            //        targets: 0
            //    }],
            //    order: [1, 'asc']
            //});
            $('.myTable').DataTable();
        });
    </script>

         <script type="text/javascript">
             function pageRedirect() {
                 window.location.href("UserProfile.aspx?userid=1");
             }

    </script>
    <script>
        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                console.log('User signed out.');
            });
        }

    </script>
</head>

<body id="page-top">
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

    <!-- Header -->
    <%-- <header class="masthead">
        <div class="container">
            <img class="img-fluid" src="img/user.png" alt="" style="margin-left: 2%; width: 20%" />
            <div class="intro-text">
                <span class="name"></span>


            </div>
        </div>
    </header>--%>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="mt-5">
        <div class="container">

            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" href="#Requests" role="tab" data-toggle="tab">Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Writer" role="tab" data-toggle="tab">Writer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Editors" role="tab" data-toggle="tab">Editors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#Reviewers" role="tab" data-toggle="tab">Reviewers</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active show" id="Requests">

                    <div id="divRequestGrid" runat="server" class="table-responsive">
                     </div>

                </div>
                <div role="tabpanel" class="tab-pane fade in" id="Writer">

                    <div id="divWriterGrid" runat="server" class="table-responsive">
                     </div>

                </div>
                 </div>
                <div role="tabpanel" class="tab-pane fade in" id="Editors">

                    <div id="divEditorGrid" runat="server" class="table-responsive">
                     </div>

                </div>
                <div role="tabpanel" class="tab-pane fade in" id="Reviewers">
                    <div id="divReviewGrid" runat="server" class="table-responsive">
                    </div>

                </div>
            </div>

        </div>
    </section>






    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>
                            299 Doon Valley Dr, 
               
                            <br />
                            Kitchener, ON N2G 4M4
                        </p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a class="btn-social btn-outline" href="#">
                                    <i class="fa fa-fw fa-facebook"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-social btn-outline" href="#">
                                    <i class="fa fa-fw fa-google-plus"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-social btn-outline" href="#">
                                    <i class="fa fa-fw fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-social btn-outline" href="#">
                                    <i class="fa fa-fw fa-linkedin"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="btn-social btn-outline" href="#">
                                    <i class="fa fa-fw fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Code Like A Girl</h3>
                        <p>
                            <a href="https://code.likeagirl.io/">Code Like A Girl</a> is an organisation dedicated to providing girls with the tools, knowledge and support to enter and flourish in the world of coding.
               
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Code Like A Girl 2017
           
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top d-lg-none">
        <a class="btn btn-primary js-scroll-trigger" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

           <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap4.min.js"></script>
</body>
</html>
