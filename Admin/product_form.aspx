<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="product_form.aspx.cs" Inherits="Admin_product_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .txt:hover {
            border: 3px solid navy;
        }
        gr {
            padding-left:10px;
            border:2px solid black;
        }
    </style>

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h1><font color="000080">Product Details</font></h1>
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


                                <asp:DropDownList ID="drop_custtype" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="drop_custtype_SelectedIndexChanged1">
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
                                <asp:DropDownList ID="drop_cloth" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="z" Font-Bold="true" ControlToValidate="drop_cloth" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Name</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:TextBox ID="txt_name" runat="server" placeholder="Product Name" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="z" Font-Bold="true" ControlToValidate="txt_name" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>



                            </div>
                            <br />
                            <br />

                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Price</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:TextBox ID="txt_price" runat="server" placeholder="Product Price" CssClass="form-control col-md-7 col-xs-12 txt" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="z" Font-Bold="true" ControlToValidate="txt_price" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>



                            </div>



                            <br />
                            <br />
                           
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Description</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:TextBox ID="txt_des" runat="server" placeholder="Product Description" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="z" Font-Bold="true" ControlToValidate="txt_des" runat="server" ErrorMessage="Field is Required!" ForeColor="red"></asp:RequiredFieldValidator>



                            </div>



                            <br />
                            <br />
                          
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Category</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_cat" runat="server" CssClass="form-control">

                                    <asp:ListItem Value="1">Formal Wear</asp:ListItem>
                                    <asp:ListItem Value="2">Casual Wear</asp:ListItem>
                                    <asp:ListItem Value="3">Party Wear</asp:ListItem>

                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Font-Bold="true" ControlToValidate="drop_cat" InitialValue="----Select Category----" runat="server" ErrorMessage="Field is required!" ForeColor="red" ValidationGroup="z"></asp:RequiredFieldValidator>
                            </div>


                            <asp:HiddenField ID="HiddenField2" runat="server" />


                            <br />
                            <br />







                            <asp:HiddenField ID="HiddenField1" runat="server" />


                            <br />







                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Color</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_color" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Font-Bold="true" ControlToValidate="drop_color" InitialValue="--Select Color--" runat="server" ErrorMessage="Field is required!" ForeColor="red" ValidationGroup="z"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Fabric Design</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_design" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Font-Bold="true" ControlToValidate="drop_design" InitialValue="--Select Design----" runat="server" ErrorMessage="Field is required!" ForeColor="red" ValidationGroup="z"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Material</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">


                                <asp:DropDownList ID="drop_material" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:HiddenField ID="HiddenField5" runat="server" />
                                <asp:HiddenField ID="HiddenField6" runat="server" />
                                <asp:HiddenField ID="HiddenField7" runat="server" />
                                <asp:HiddenField ID="HiddenField8" runat="server" />
                                <asp:HiddenField ID="HiddenField9" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Font-Bold="true" ControlToValidate="drop_material" InitialValue="--Select Material----" runat="server" ErrorMessage="Field is required!" ForeColor="red" ValidationGroup="z"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Front Photo</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:FileUpload ID="file_front" runat="server" />
                                <asp:Label ID="lbl_f" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Product Back Photo</font><span class="required"><font color="red">*</font></span>
                            </label>

                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:FileUpload ID="file_back" runat="server" />
                                <asp:Label ID="lbl_b" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                            </div>
                        </div>



                        <asp:HiddenField ID="HiddenField3" runat="server" />



                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_add" runat="server" ValidationGroup="z" Text="Add" CssClass="btn btn-success" OnClick="btn_add_Click" />

                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="btn btn-primary" />
                            </div>
                        </div>






                        <asp:HiddenField ID="HiddenField4" runat="server" />
                        <asp:HiddenField ID="HiddenField10" runat="server" />
                        <asp:HiddenField ID="HiddenField11" runat="server" />
                        <asp:HiddenField ID="HiddenField12" runat="server" />

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
                                    <asp:GridView ID="gridview_product" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_product_RowCommand" AllowPaging="True" OnPageIndexChanging="gridview_product_PageIndexChanging" OnSelectedIndexChanging="gridview_product_SelectedIndexChanging">
                                        <AlternatingRowStyle BackColor="#DCDCDC" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <%#Container.DataItemIndex+1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Custmer Type">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("category").ToString()=="1"? "Man":"Woman" %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="cloth_category" HeaderText="Cloth Category" />
                                            <asp:BoundField DataField="name" HeaderText="Product Name" />
                                            <asp:BoundField DataField="price" HeaderText="Product Price" />
                                            <asp:BoundField DataField="descriptions" HeaderText="Descriptions" />
                                            <asp:BoundField DataField="cat" HeaderText="Categories" />

                                            <asp:BoundField DataField="color" HeaderText="Product Color" />
                                            <asp:BoundField DataField="design" HeaderText="Fabric Design" />
                                            <asp:BoundField DataField="material_nm" HeaderText="Material" />

                                            <asp:TemplateField HeaderText="Product Front Photo">
                                                <ItemTemplate>
                                                    <asp:Image ID="product_front" runat="server" ImageUrl='<%# string.Format("images/{0}", Eval("product_front")) %>' Width="100px" />

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Product Back Photo">
                                                <ItemTemplate>
                                                    <asp:Image ID="product_back" runat="server" ImageUrl='<%# string.Format("images/{0}", Eval("product_back")) %>' Width="100px" />

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                            <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />

                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Editdata_product">Edit</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Deletedata_product">Delete</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>




                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" Font-Size="Large"  BorderWidth="2px" BorderStyle="Solid" />
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

