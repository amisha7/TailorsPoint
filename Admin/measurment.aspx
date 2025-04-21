<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="measurment.aspx.cs" Inherits="Admin_measurment" %>

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
                    <h1><font color="000080">Measurement</font></h1>
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
                                <font color="blue" size="4">Order Id</font><span class="required"><font color="red">*</font></span>
                            </label>



                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <asp:TextBox ID="txt_order" runat="server" placeholder="Order Id" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="i" runat="server" ErrorMessage="Field is Required!" Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="txt_order"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <br />


                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Length &nbsp; </font>
                            </label>


                            <asp:HiddenField ID="HiddenField1" runat="server" />

                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_length" runat="server" placeholder="Length" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Cheast &nbsp; </font>
                            </label>




                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_cheast" runat="server" placeholder="cheast" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Waist &nbsp; </font>
                            </label>




                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_waist" runat="server" placeholder="waist" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Shoulder &nbsp; </font>
                            </label>




                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_shoulder" runat="server" placeholder="shoulder" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Fitting &nbsp; </font>
                            </label>
                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_fitiing" runat="server" placeholder="Fitting" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches
                     
                            </div>
                            <br />
                        </div>
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Sleeve Fitting &nbsp; </font>
                            </label>
                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Fitting" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches
                     
                            </div>
                            <br />
                        </div>
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Legs Fitting &nbsp; </font>
                            </label>
                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Fitting" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches
                     
                            </div>
                            <br />
                        </div>
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Upper Length &nbsp; </font>
                            </label>




                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_upperlength" runat="server" placeholder="Upper Length" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">


                            <label class="control-label col-md-3 col-sm-3 col-xs-12 " for="first-name">
                                <font color="blue" size="4">Bottom Length &nbsp; </font>
                            </label>




                            <div class="input-group input-group-sm  col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:TextBox ID="txt_bottomlength" runat="server" placeholder="Bottom Length" CssClass="form-control col-md-7 col-xs-12 txt"></asp:TextBox>

                                <span class="input-group-addon">inches</span>
                            </div>
                        </div>
                        <br />

                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                <asp:Button ID="btn_measurementadd" ValidationGroup="i" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btn_measurementadd_Click" />

                                <asp:Button ID="btn_measurementcancel" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="btn_measurementcancel_Click" />
                            </div>
                        </div>


                        <br />






                        <div class="ln_solid"></div>

                        <%--  --%>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><b>Measurement details</b> </h2>
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
                                                <asp:GridView ID="gridview_measur" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowCommand="gridview_measur_RowCommand">
                                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Id">
                                                            <ItemTemplate>
                                                                <%#Container.DataItemIndex+1 %>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="order_id" HeaderText="Order Id" />
                                                        <asp:BoundField DataField="length1" HeaderText="Length" />
                                                        <asp:BoundField DataField="cheast" HeaderText="Cheast" />
                                                        <asp:BoundField DataField="waist" HeaderText="Waist" />
                                                        <asp:BoundField DataField="shoulder" HeaderText="Shoulder" />
                                                        <asp:BoundField DataField="fitting" HeaderText="Fitting" />
                                                        <asp:BoundField DataField="upper_length" HeaderText="Upper length" />
                                                        <asp:BoundField DataField="bottom_length" HeaderText="Bottom length" />




                                                        <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                                        <asp:BoundField DataField="dom" HeaderText="Date_Of_Modification" />
                                                        <asp:TemplateField HeaderText="Edit">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Editdata_measur">Edit</asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Deletedata_measurement">Delete</asp:LinkButton>
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




    </span>



    
</asp:Content>

