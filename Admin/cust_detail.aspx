<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="cust_detail.aspx.cs" Inherits="Admin_cust_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2><b>Coustomer Details</b> </h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>


                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer" style="overflow: scroll; overflow-y: hidden">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="dataTables_length" id="datatable_length"></div>
                            </div>
                            <div class="col-sm-6">
                                <div id="datatable_filter" class="dataTables_filter"></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <asp:GridView ID="gridview_cust" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_cust_RowCommand">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Id">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="fname" HeaderText="First Name " />
                                        <asp:BoundField DataField="mname" HeaderText="Middele Name " />
                                        <asp:BoundField DataField="lname" HeaderText="Last Name " />
                                        <asp:BoundField DataField="gender" HeaderText="Gender " />
                                        <asp:BoundField DataField="address" HeaderText="Address" />
                                        <asp:BoundField DataField="countryid" HeaderText="Country" />
                                        <asp:BoundField DataField="stateid" HeaderText="State " />
                                        <asp:BoundField DataField="cityid" HeaderText="City" />
                                        <asp:BoundField DataField="contactno" HeaderText="Contact" />
                                        <asp:BoundField DataField="emailid" HeaderText="Email " />
                                        <asp:BoundField DataField="password1" HeaderText="Password" />
                                        <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                        <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />
                                        <asp:BoundField DataField="isActive" HeaderText="IsActive" />

                                        <asp:TemplateField HeaderText="Isactive ">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="isactivedata">

                                        <i class="glyphicon glyphicon-ok" style="color:limegreen"></i>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="De-active">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="deactivedata">

                                        <i class="glyphicon glyphicon-remove" style="color:darkred"></i>
                                                </asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>

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
                </div>
            </div>
        </div>
    </div>
</asp:Content>

