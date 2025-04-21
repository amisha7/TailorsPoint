<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="Admin_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h1><font color="000080">Order Details</font></h1>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  style="overflow: scroll; overflow-y: hidden">
                        <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:GridView ID="gridview_order"  runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_order_RowCommand"   >
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="order_id" HeaderText="Order Id" />
                                            <asp:BoundField DataField="user_id" HeaderText="User Id" />
                                            <asp:BoundField DataField="product_id" HeaderText="Product" />
                                             <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                            <asp:BoundField DataField="price" HeaderText="Price" />
                                            <asp:BoundField DataField="sub_total" HeaderText="Sub Total" />
                                             <asp:BoundField DataField="size" HeaderText="Standard Size" />
                                            <asp:BoundField DataField="measurement_id" HeaderText="Measurement Id" />
                                            <asp:BoundField DataField="change_style" HeaderText="Product Style" />
                                           
                                            <asp:BoundField DataField="delivery_date" HeaderText="Delivery Date" />
                                           <asp:BoundField DataField="address1" HeaderText="Address" />
                                             <asp:BoundField DataField="card_no" HeaderText="Card No" />
                                             <asp:BoundField DataField="cvv_no" HeaderText="Cvv No" />
                                             <asp:BoundField DataField="expiry_date" HeaderText="Expiry Date" />
                                             <asp:BoundField DataField="name_card" HeaderText="Name Of  card" />
                                              <asp:BoundField DataField="order_status" HeaderText="Status" />
                                              <asp:TemplateField HeaderText="Pending">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="pendingdata" >

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
  
                                            <asp:TemplateField HeaderText="Processing">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="processingdata">

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Delivered">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="delivereddata">

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                           <asp:TemplateField HeaderText="Returned">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="returneddata">

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                            
                                               <asp:BoundField DataField="doc" HeaderText="Date Of Creation" />
                                             <asp:BoundField DataField="dom" HeaderText="Date Of Modificatin" />

                                            


                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>

                                </div>
                            </div>
                            
                        </div>

                        <br />
                        <br />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <br />

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

