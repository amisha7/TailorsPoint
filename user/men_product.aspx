<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="men_product.aspx.cs" Inherits="user_men_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    .amisha:hover .patel {
-webkit-transform:scale(1.3);
transform:scale(1.3);
}
.amisha{
overflow:hidden;

}
.patel {
-webkit-transition: all 0.7s ease;
transition: all 0.7s ease;
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div role="main" class="main"  style="background-color:#F3F2F1">

        <!-- Begin page top -->
        <section class="page-top-md">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Shop - Sidebar</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <div class="container">
            <div class="row" >
                             <div class="col-md-3" style="background-color:silver;margin-left:-10px;border:1px solid gray">
   
                    <aside class="sidebar">
                        <aside class="block filter-blk" style="padding-top:25px">
                            <h4>Filter By Price</h4>
                            <div id="price-range">
                                <div class="padding-range">
                                    <div id="slider-range"></div>
                                </div>
                                <label for="amount">Price:</label>
                                <asp:TextBox ID="amount" runat="server" ClientIDMode="Static"></asp:TextBox>
<%--                                <input type="text" id="amount">--%>
                            </div>
                        </aside>
                        <br />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        <asp:HiddenField ID="HiddenField3" runat="server" />
                        <aside class="block blk-cat" style="color:black"><br /> 
                            <h4>Category</h4>
                            <ul class="list-unstyled list-cat">


                                <li>
                                    <asp:RadioButtonList ID="rd_wear" runat="server">
                                        <asp:ListItem Value="1">Formal Wear</asp:ListItem>
                                        <asp:ListItem Value="2">Casual Wear</asp:ListItem>
                                        <asp:ListItem Value="3">Party Wear</asp:ListItem>

                                    </asp:RadioButtonList></li>
                            </ul>
                        </aside>
                        <aside class="block blk-colors" style="color:black">
                            <h4>Colors</h4>
                            <ul class="list-unstyled list-cat">
                                <asp:RadioButtonList ID="rdoColor" runat="server"></asp:RadioButtonList>
                            </ul>
                        </aside>
                        <aside class="block blk-brands" style="color:black">
                            <h4>Fabric Design</h4>
                            <ul class="list-unstyled list-cat">

                                <asp:RadioButtonList ID="rddesign" runat="server"></asp:RadioButtonList>
                            </ul>


                           
                        </aside>

                        <aside class="block blk-brands" style="color:black">
                            <h4>Material</h4>
                            <ul class="list-unstyled list-cat">

                                <asp:RadioButtonList ID="rdmaterial" runat="server"></asp:RadioButtonList>


                            </ul>
                        </aside>
                        <p class="clearfix">
                            <asp:Button ID="btn_submit" runat="server" Text="Apply Filter" CssClass="btn btn-primary btn-sm" OnClick="btn_submit_Click" />
                        </p>
                        <%--<aside class="block featured">
                            <h4>Featured</h4>
                            <ul class="list-unstyled list-thumbs-pro">
                                <li class="product">
                                    <div class="product-thumb-info">
                                        <div class="product-thumb-info-image">
                                            <a href="shop-product-detail1.html">
                                                <img alt="" width="60" src="images/content/products/product-9.jpg"></a>
                                        </div>

                                        <div class="product-thumb-info-content">
                                            <h4><a href="shop-product-detail2.html">Classic blazer</a></h4>
                                            <span class="item-cat"><small><a href="#">Outerwear</a></small></span>
                                            <span class="price">29.99 USD</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </aside>--%>
                    </aside>
                </div>
                <div class="col-md-9" style="margin-left:10px">
                    <!-- Begin Lookbook Women -->
                    <div >                   <section id="lookbook">
                        <div class="lookbook">
                            <h2><a href="#">Lookbook</a></h2>
                            <p>
                             Instead of redeeming your hard earned points on a limited number of items, use them to purchase what you want by choosing from Amazon.com's vast selection. Shop with Points is a seamless part of the Amazon.com shopping experience you know and love. Simply choose to apply points at checkout, and you can even set points to apply to all purchases automatically.

                            </p>
                        </div>
                    </section>
                    <!-- End Lookbook Women -->
                   </div>
 <div class="toolbar clearfix">
                            <ul class="list-inline list-icons pull-left">
                                <li class="active"><a href="#"><i class="fa fa-th"></i></a></li>
                            </ul>
                            <p class="pull-left">Showing results</p>
                            <!-- Ordering -->

                        </div>

                    <div class="catalog "   style="background-color:silver">
                        
                        <center>
                        <asp:Label ID="match" runat="server" Text="" Font-Bold="True" Font-Size="30px"></asp:Label>
                       </center>
                        
                        <div class="row" style="margin-left:10px;padding-top:30px;background-color:silver" >
                            <asp:Repeater ID="Repeater4" runat="server">
                                <ItemTemplate>

                                    <div class="col-xs-4 animation ">
                                        <div class="product " >
                                            <div class="product-thumb-info ">
                                                <div class="product-thumb-info-image amisha">
                                                    <%--<span class="product-thumb-info-act">
                                                       <%-- <a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
                                                            <span><i class="fa fa-external-link"></i></span>
                                                        </a>
                                                        <a href="shop-cart-full.html" class="add-to-cart-product">
                                                            <span><i class="fa fa-shopping-cart"></i></span>
                                                        </a>
                                                    </span>--%>
                                                    <asp:Label ID="lbl_cat" runat="server" Text='<%# Eval("sub_cat") %>' Visible="false"></asp:Label>
                                                        <asp:Label ID="lbl_pro" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                                                        
                                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                                   <asp:Image ID="Image1" runat="server" CssClass="img-responsive patel" ImageUrl='<%# string.Format("../admin/images/{0}",Eval("product_front"))  %>' Height="400" Width="300" />
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="product-thumb-info-content">
                                                    <span class="price pull-right">Rs.<%# Eval("price") %></span>
                                                    <h4>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("name") %>' OnClick="LinkButton1_Click">

                                                        </asp:LinkButton>
                                                        </li>
                                                   </h4>
                                                    <%--<span class="item-cat"><small><a href="#">Accessories</a></small></span>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>


                        </div>

                      
                    </div>
                </div>
            </div>


        </div>

    </div>
    <!-- End Main -->


</asp:Content>

