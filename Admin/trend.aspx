<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="trend.aspx.cs" Inherits="Admin_trend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .txt:hover {
            border: 3px solid navy;
        }
    </style>

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h1><font color="000080">New Trend</font></h1>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                        <asp:HiddenField ID="HiddenField4" runat="server" />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Customer Type</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_custtype" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="drop_custtype_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--Select Customer Category--</asp:ListItem>
                                    <asp:ListItem Value="1">Man</asp:ListItem>
                                    <asp:ListItem Value="2">Woman</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Font-Bold="true" ControlToValidate="drop_custtype" InitialValue="--Select Customer Category--" runat="server" ErrorMessage="Please Select Customer Type !" ForeColor="red" ValidationGroup="z"></asp:RequiredFieldValidator>
                            </div>



                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Cloth's Categories</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="drop_cloth" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="drop_cloth_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="z" Font-Bold="true" ControlToValidate="drop_cloth" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product</font><span class="required"><font color="red">*</font></span>
                            </label>


                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="drop_product" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="z" Font-Bold="true" ControlToValidate="drop_product" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        <asp:HiddenField ID="HiddenField3" runat="server" />
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_add" runat="server" ValidationGroup="z" Text="Add" CssClass="btn btn-success" OnClick="btn_add_Click" />

                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                            </div>
                        </div>






                        <br />
                        <br />
                        <br>





                        <div class="ln_solid"></div>
                    </div>
                </div>
            </div>
            <div class="x_panel">
                <div class="x_title">

                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div id="demo-form1" data-parsley-validate class="form-horizontal form-label-left">


                        <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer" style="overflow: scroll; overflow-y: hidden;">
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
                                    <asp:GridView ID="gridview_trend" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_trend_RowCommand">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Custmer Category">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cust_type").ToString()=="1"? "Man":"Woman" %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cloth_category" HeaderText="Cloth Category" />
                                            <asp:BoundField DataField="name" HeaderText="Product" />

                                            <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                            <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />


                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Deletedata_trend">Delete</asp:LinkButton>
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
    </div>
</asp:Content>

