<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget_pwd.aspx.cs" Inherits="Admin_forget_pwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link href="../user/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icon Fonts -->
    <link href="../user/css/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Owl Carousel Assets -->
    <link href="../user/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../user/vendor/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="../user/vendor/owl-carousel/owl.transitions.css" rel="stylesheet">

    <!-- bxslider -->
    <link href="../user/vendor/bxslider/jquery.bxslider.css" rel="stylesheet">
    <!-- flexslider -->
    <link rel="stylesheet" href="../user/vendor/flexslider/flexslider.css" media="screen">

    <!-- Theme -->
    <link href="../user/css/theme-animate.css" rel="stylesheet">
    <link href="../user/css/theme-elements.css" rel="stylesheet">
    <link href="../user/css/theme-blog.css" rel="stylesheet">
    <link href="../usercss/theme-shop.css" rel="stylesheet">
    <link href="../user/css/theme.css" rel="stylesheet">




    <!-- Style Switcher-->
    <link rel="stylesheet" href="style-switcher/css/style-switcher.css">
    <link href="../user/css/colors/cyan/style.html" rel="stylesheet" id="layoutstyle">

    <!-- Theme Responsive-->
    <link href="css/theme-responsive.css" rel="stylesheet">

     <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,700,300italic' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body style="background-image:url('image/login_image.jpg');background-repeat:no-repeat;background-size:1500px;">
   
    <form id="form1" runat="server">
    <div>
        <br /></br><br /><br /><br />
        <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              
                                <fieldset>

                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <asp:TextBox ID="txt_email" runat="server" placeholder="Email address" CssClass="form-control"></asp:TextBox>
                                       
                                    </div>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email Address !" ValidationGroup="a" ControlToValidate="txt_email" Font-Bold="True" Font-Size="Small" ForeColor="red"></asp:RequiredFieldValidator>
                                  </div>
                                  <div class="form-group">
                                      <asp:Button ID="btn_submit" runat="server" Text="Send My Password" CssClass="btn btn-lg btn-primary btn-block" ValidationGroup="a" OnClick="btn_submit_Click" />                                   
                                  </div>
                                </fieldset>
                              
                                <asp:HiddenField ID="HiddenField1" runat="server" />            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
    </div>
    </form>
</body>
</html>
