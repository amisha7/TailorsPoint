<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="view_cart.aspx.cs" Inherits="user_view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div role="main" class="main">

        <!-- Begin page top -->
        <section class="page-top">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Shopping Bag</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->

        <div class="container">

            <div class="row featured-boxes">
                <div class="col-md-12">
                    <h3>Your selection (<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        items)</h3>
                    <div class="featured-box featured-box-cart">
                        <div class="box-content">
                            <div>
                                <table cellspacing="0" class="shop_table" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Item
                                            </th>
                                            <th class="product-name">Product Name
                                            </th>
                                            <th class="product-name" style="width:14%">Product Style
                                            </th>
                                            <th class="product-price">Price
                                            </th>
                                            <th class="product-quantity">Quantity
                                            </th>
                                            <th class="product-subtotal">SubTotal
                                            </th>
                                            <th class="product-remove">&nbsp;
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>

                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr class="cart_table_item">
                                                    <td class="product-thumbnail">
                                                        

                                                            <asp:Image ID="Image1" runat="server" Width="80" ImageUrl='<%# string.Format("../admin/images/{0}",Eval("product_front"))  %>' />
                                                        
                                                    </td>
                                                    <td class="product-name">
                                                        <asp:LinkButton ID="pro_name" runat="server"   CommandArgument='<%# Eval("Id") %>' CommandName="edit" OnCommand="pro_name_Command"><%#Eval("name")  %></asp:LinkButton>
                                                    </td>
                                                     <td class="product-style">
                                                         <asp:Label ID="Label3" runat="server" Text='<%#Eval("change_style")  %>'></asp:Label>
                                                    </td>
                                                    <td class="product-price">
                                                        <span class="amount">Rs.<%#Eval("price")  %></span>

                                                    </td>
                                                    <td class="product-quantity">

                                                        <div class="quantity">
                                                            <asp:Label ID="pro_q" runat="server" Text='<%#Eval("quantity")  %>' CssClass="input-text qty text"></asp:Label>
                                                        </div>

                                                    </td>

                                                    <td class="product-subtotal">
                                                        <span class="amount">Rs.<%#Eval("sub_total")  %></span>
                                                    </td>
                                                    <td class="product-remove">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delete_cart"  OnCommand="LinkButton1_Command"><i class="fa fa-times-circle"></i></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row featured-boxes" >
                <div class="col-xs-4">
                    <div class="featured-box featured-box-secondary">
                        <div class="box-content">
                            <h4>Shopping bag summary</h4>
                            <table cellspacing="0" class="cart-totals" width="100%">
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Cart Subtotal
                                        </th>
                                        <td>
                                            <span class="amount">
                                                Rs.<asp:Label ID="total" runat="server" Text=""></asp:Label></span>
                                        </td>
                                    </tr>
                                     <tr class="cart-subtotal">
                                        <th>Discount
                                        </th>
                                        <td>
                                            <span class="amount">5%</span>
                                        </td>
                                    </tr>
                                    <tr class="total">
                                        <th>Total
                                        </th>
                                        <td>
                                            <span class="amount">
                                                Rs.<asp:Label ID="d" runat="server" Text=""></asp:Label></span>
                                        </td>
                                       
                                    </tr>
                                </tbody>
                            </table>

                              <p>
                                    <asp:Button ID="btn_proceed" runat="server" Text="Proceed To checkout" CssClass="btn btn-primary btn-block btn-sm" data-loading-text="Loading..."  OnClick="btn_proceed_Click"/>
                                    <p>
                                        <asp:Button ID="btn_continue" runat="server" Text="Continue Shopping" CssClass="btn btn-grey btn-block btn-sm" data-loading-text="Loading..."  OnClick="btn_continue_Click1"/>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>

