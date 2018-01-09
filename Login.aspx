<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Code Like A Girl</title>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="340473018216-jbd8d672445eqsaau5esicu1rrqu7lv0.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

      <link href="css/freelancer.css" rel="stylesheet" />       
     <link href="css/freelancer.min.css" rel="stylesheet" />
    <link href="external/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">--%>
   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


     <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/freelancer.min.js"></script>

    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="external/jquery.hotkeys.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    <script src="external/google-code-prettify/prettify.js"></script>
    <link href="css/index.css" rel="stylesheet" />
    <script src="js/bootstrap-wysiwyg.js"></script>



</head>s
<body>
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: #343a40!important;">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger ml-0" href="#">CODE LIKE A GIRL</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
         
                <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="height: 5vh;">
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
                            <a class="nav-link js-scroll-trigger" href="UserProfile.aspx?userid=1">Profile</a>
                            <%--<button id="btnSetting" class="nav-link js-scroll-trigger" onclick="pageRedirect()" runat="server">Settings</button>--%>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="Registration.aspx">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>



         <h3 class="container-fluid mb-5 ml-5 text-info" style="margin-top:20vh;">New article</h3>
    <div class="container">

        <div id="alerts"></div>
        <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
            <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
                <ul class="dropdown-menu">
                </ul>
            </div>
            <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                    <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                    <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                </ul>
            </div>
            <div class="btn-group">
                <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
                <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
            </div>
            <div class="btn-group">
                <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
                <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
                <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
            </div>
            <div class="btn-group">
                <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
            </div>
            <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
                <div class="dropdown-menu input-append">
                    <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                    <button class="btn" type="button">Add</button>
                </div>
                <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

            </div>

            <div class="btn-group">
                <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
                <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
            </div>
            <div class="btn-group">
                <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
            </div>
            <br />
            <br />
            <textarea class="form-control mt-3" runat="server"  placeholder="Title here" id='title' rows="1" cols="190"></textarea>
            <%-- <input id="output" type="text" data-edit="inserttext">--%>
        </div>

        <textarea id="editor" class="mt-4" runat="server"  rows="1" cols="125" style="overflow:scroll; max-height:300px;">
        </textarea>

          <br /><br />
                        <div class="row" runat="server" id="divMsg" style="align-content:center; color:black ; font-size:x-large;"></div>

    </div>
    <div class="container-fluid mt-3 ml-4 text-center">
    
        <asp:Button ID="btnClear" class="btn btn-outline-primary" runat="server" OnClick="btnClear_Click" Text="Clear"></asp:Button>
        <asp:Button ID="btnSave" class="btn btn-outline-primary mr-2" runat="server" OnClick="btnSave_Click" Text="Save"></asp:Button>
        <asp:Button ID="btnDashboard" class="btn btn-outline-primary mr-2" runat="server" OnClick="btnDashboard_Click" Text="Back"></asp:Button>
  
    </div>

        </form>



    <%--Google sign in--%>
    <%--  <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" onclick="location.href='Homepage.aspx'"></div>--%>


    <script>
        function onSignIn(googleUser) {
            // Useful data for your client-side scripts:
            var profile = googleUser.getBasicProfile();
            console.log("ID: " + profile.getId()); // Don't send this directly to your server!
            console.log('Full Name: ' + profile.getName());
            console.log('Given Name: ' + profile.getGivenName());
            console.log('Family Name: ' + profile.getFamilyName());
            console.log("Image URL: " + profile.getImageUrl());
            console.log("Email: " + profile.getEmail());
            // The ID token you need to pass to your backend:
            var id_token = googleUser.getAuthResponse().id_token;
            console.log("ID Token: " + id_token);
        };
    </script>
    <%--<script>
        var input = document.querySelector('#clear');
        var textarea = document.querySelector('#editor');
        input.addEventListener('click', function () {
            textarea.innerHTML = '';
        }, false);
    </script>--%>

    <script>
        $(function () {
            function initToolbarBootstrapBindings() {
                var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                    'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                    'Times New Roman', 'Verdana'],
                    fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                $.each(fonts, function (idx, fontName) {
                    fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                });
                $('a[title]').tooltip({ container: 'body' });
                $('.dropdown-menu input').click(function () { return false; })
                    .change(function () { $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle'); })
                    .keydown('esc', function () { this.value = ''; $(this).change(); });
                $('[data-role=magic-overlay]').each(function () {
                    var overlay = $(this), target = $(overlay.data('target'));
                    overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                });
                if ("onwebkitspeechchange" in document.createElement("input")) {
                    var editorOffset = $('#editor').offset();
                    $('#voiceBtn').css('position', 'absolute').offset({ top: editorOffset.top, left: editorOffset.left + $('#editor').innerWidth() - 35 });
                } else {
                    $('#voiceBtn').hide();
                }
            };
            function showErrorAlert(reason, detail) {
                var msg = '';
                if (reason === 'unsupported-file-type') { msg = "Unsupported format " + detail; }
                else {
                    console.log("error uploading file", reason, detail);
                }
                $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                    '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
            };
            initToolbarBootstrapBindings();
            $('#editor').wysiwyg({ fileUploadError: showErrorAlert });
            window.prettyPrint && prettyPrint();
        });
    </script>



    <div id="fb-root"></div>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-37452180-6', 'github.io');
        ga('send', 'pageview');
    </script>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "http://connect.facebook.net/en_GB/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "http://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>


        
</body>
</html>