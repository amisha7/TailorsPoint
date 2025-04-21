<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="user_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-top-md">
        <div class="container">
            <div class="page-top-in">
                <h2><span>About Tailorspoint</span></h2>
            </div>
        </div>
    </section>
     <div class="row">
         <div class="col-md-4">
            <asp:Image ID="Image5" runat="server" ImageUrl="images/choose_fabric.png" CssClass="img-responsive"   />
            <br /><span style="color:blue;font-size:20px;"> Choose Fabric</span>
              </div>
          <div class="col-md-4">
            <asp:Image ID="Image6" runat="server" ImageUrl="images/style_shirt.png" CssClass="img-responsive"   />
             <br /><span style="color:blue;font-size:20px;"> Style Shirt</span>
               </div>
                
        <div class="col-md-4">
            <asp:Image ID="Image4" runat="server" ImageUrl="images/measure_yourslelf.png" CssClass="img-responsive"   />
           <span style="color:blue;font-size:20px;"> Measure Yourself</span>
            </div>
         </div>
    <div class="row">
        <div class="col-md-12 animation">
            <div class="alert alert-success">
                <p style="font-size: 20px; color: #0066CC; font-weight: bold; padding-left: 3em;">Make a purchase at Tailorman in 3 Easy Steps</p>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-6">
            <p class="drop-caps" style="padding-left: 3em;">
                1Select Your Style      
                <br />
                Choose from a vast selection of jackets, pants, shirts, waistcoats ,kurti,dress,blouse to complement your preference. Tailorspoint
                 updates it classic and edgy collections on a regular basis, so your wardrobe is ready for every event!
            </p>
        </div>


        <div class="col-md-6">
            <div style="padding-left: 150px">
                <asp:Image ID="Image2" runat="server" ImageUrl="images/1.png" CssClass="img-responsive" Height="300px" Width="400px" style="border:2px solid black" />
            </div>
        </div>
    </div>

    <br />
    <br />
    <div class="row">
        <div class="col-md-6">
            <div style="padding-left: 150px">
                <asp:Image ID="Image1" runat="server" ImageUrl="images/2.png" CssClass="img-responsive" Height="300px" Width="400px" style="border:2px solid black"  />
            </div>
        </div>
        <div class="col-md-6">
            <p class="drop-caps" style="padding-left: 3em;">
                2.Customize     
                <br />
                You can buy the Tailorspoint recommended styles which has been put together by our expert advisors. Or you are free to customize as per your styling preference.

Walk along with Tailorspoint, Online or at our Experience Store, as we help you select unique features of your garment such as the shirt collar-cuff or the suit collar lapel. Add fun or classical elements to your jacket lining and melton among others. We will also embroider your initials or a short message to make it truly special. All this for no additional cost!
            </p>
        </div>



    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-6">
            <p class="drop-caps" style="padding-left: 3em;">
                3.Get Measured     
                <br />
                Measurements are a one time process which is stored securely in our system. Future purchases are point, click, buy!! 
Tailorspoint's expertise built over years of research and experience aided with state-of-the- art technology ensures just what we promise - a great fitting custom garment!
                We provide you to best service from our side!
            </p>
        </div>


        <div class="col-md-6">
            <div style="padding-left: 150px">
                <asp:Image ID="Image3" runat="server" ImageUrl="images/3.png" CssClass="img-responsive" Height="300px" Width="400px" style="border:2px solid black"  />
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>

