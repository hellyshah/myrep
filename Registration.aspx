﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Main.css" rel="stylesheet" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
   
</head>
<body>

    <div class="container ">
       
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Become a Code Like A Girl Writer</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">


                            <div class="form-group">
                                <asp:TextBox type="text" name="email" ID="txtemail" class="form-control input-md" placeholder="Email Address" runat="server" />
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox type="text" name="T_Handle" ID="T_Handle" class="form-control input-md" placeholder="Twitter Handle" runat="server" />
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <asp:TextBox type="text" name="M_Username" ID="M_Username" class="form-control input-md" placeholder="Medium Username" runat="server" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:TextBox type="text" name="StoryLink" ID="txtStoryLink" class="form-control input-md" placeholder="Story Link" runat="server" />
                            </div>

                            <div class="form-group">
                                <textarea name="Reason" id="Reason" class="form-control input-md" rows="5" placeholder="Reason to join Code Like a Girl" runat="server"></textarea>
                            </div>
                            <asp:Button ID="btnSubmit" runat="server" class="btn btn-block btncolor" OnClick="btnSubmit_Click" Text="Send Request" />
                             <asp:Button ID="btnLogin" runat="server" class="btn btn-block btncolor" OnClick="btnLogin_Click" Text=" Already a member? Login Here" />
                        </form>

                       
                    </div>
                </div>
            </div>
        </div>

        <div class="row" runat="server" id="divMsg" style="align-content:center;background-color:#ededed;color:green;width:31%;font-size:x-large;"></div>

    </div>







</body>
</html>
