<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="myorder.aspx.cs" Inherits="user_myorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="page-top-md">
				<div class="container">
					<div class="page-top-in">
						<h2><span>My Order</span></h2>
					</div>
				</div>
			</section> 

    <div class="container">

            <div class="row featured-boxes">
                <div class="col-md-12">
                     
                    <div class="featured-box featured-box-cart">
                        <div class="box-content">
                            <div>
                                <table cellspacing="0" class="shop_table" width="100%">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Order Id
                                            </th>
                                            <th class="product-name">Item
                                            </th>
                
                                            <th class="product-style" style="width:14%">Product Style
                                            </th>
                                            <th class="product-price">Price
                                            </th>
                                            <th class="product-quantity">Quantity
                                            </th>
                                            <th class="product-subtotal">Subtotal
                                            </th>
                                            <th class="product-status">Order Status
                                            </th>
                                           
                                           
                                    </thead>
                                    <tbody>

                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr class="cart_table_item">
                                                    <td class="product-thumbnail">

                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("order_id")  %>'></asp:Label>
                                                      
                                                    </td>
                                                    <td class="product-name">
                                                        

                                                            <asp:Image ID="Image1" runat="server" Width="80" ImageUrl='<%# string.Format("../admin/images/{0}",Eval("product_front"))  %>' />
                                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("name")  %>'></asp:Label>

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
                                                    <%--<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>--%>
                                                    <td class="product-status">
                                                        <asp:Label ID="lbl_order" runat="server" Text='<%#Eval("order_status")  %>'></asp:Label>
                                                        <span class="amount">
                                                            <asp:LinkButton ID="LinkButton1" runat="server"  OnLoad="LinkButton1_Load">
                                                                <asp:Label ID="txt" runat="server" Text=""></asp:Label></asp:LinkButton></span>
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

            

        </div>
    

</asp:Content>

