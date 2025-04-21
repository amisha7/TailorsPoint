<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="cloth_category.aspx.cs" Inherits="Admin_cloth_category" %>

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
                    <h1><font color="000080">Cloth's Categories</font></h1>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br />
                    <div id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Customer Type</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_custtype" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="1">Man</asp:ListItem>
                                    <asp:ListItem Value="2">Woman</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="true" ControlToValidate="drop_custtype" InitialValue="--Select Cust Category--" runat="server" ErrorMessage="Please Select Customer Type !" ForeColor="red" ValidationGroup="b"></asp:RequiredFieldValidator>
                            </div>



                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Cloth's Categories</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_clothcategory" runat="server" placeholder="Cloth's Category" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="b" Font-Bold="true" ControlToValidate="txt_clothcategory" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <asp:HiddenField ID="HiddenField2" runat="server" />


                        <br />
                        <br />
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_clothadd" runat="server" ValidationGroup="b" Text="Add" CssClass="btn btn-success" OnClick="btn_clothadd_Click" />

                                <asp:Button ID="btn_clothcancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                            </div>
                        </div>






                        <asp:HiddenField ID="HiddenField1" runat="server" />


                        <br />





                        <div class="ln_solid"></div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><b>Cloth Category</b> </h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>


                                    </ul>
                                    <div class="clearfix"></div>
                                </div>

                                <div class="x_content">

                                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
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
                                                <asp:GridView ID="gridview_cloth" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_cloth_RowCommand">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Id">
                                                            <ItemTemplate>
                                                                <%#Container.DataItemIndex+1 %>
                                                                
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        
                                                        <asp:TemplateField HeaderText="Custmer Type">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("cust_type_id").ToString()=="1"? "Man":"Woman" %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        
                                                        <asp:BoundField DataField="cloth_category" HeaderText="Cloth category" />
                                                        <asp:BoundField DataField="doc" HeaderText="Date Of Creation" />
                                                        <asp:BoundField DataField="dom" HeaderText="Date Of Modification" />

                                                        <asp:TemplateField HeaderText="Edit">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Editdata_cloth">Edit</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Deletedata_cloth">Delete</asp:LinkButton>
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
            </div>
            </div>
       </div>
</asp:Content>

