<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditorList.aspx.cs" Inherits="EditorList" %>

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
            $('#myTable').DataTable({
                responsive: {
                    details: {
                        type: 'column',
                        target: 'tr'
                    }
                },
                columnDefs: [{
                    className: 'control',
                    orderable: false,
                    targets: 0
                }],
                order: [1, 'asc']
            });
        });
    </script>
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
    <form runat="server"  style="margin-top:15vh;">
        <div class="container mt-3">
            <asp:Button ID="addEditor" class="btn btn-primary mb-3 ml-3 btn-lg " runat="server" OnClick="addEditor_Click" Text="Add Editor"></asp:Button>

            <div id="divEditorGrid" runat="server" class="table-responsive">
            </div>
            <%-- <table>  
      <tr>  
            <td id="divEditorGrid" runat="server">  
            </td>  
     </tr>  
</table>  --%>
        </div>
    </form>
    
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
