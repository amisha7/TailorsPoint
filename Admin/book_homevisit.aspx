<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="book_homevisit.aspx.cs" Inherits="Admin_book_homevisit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h1><font color="000080">Customers that Book Home Visit </font> </h1>
                    <ul class="nav navbar-right panel_toolbox" >
                      <li ><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <div id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                        <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="datatable_length"></div></div><div class="col-sm-6"><div id="datatable_filter" class="dataTables_filter"></div></div></div><div class="row"><div class="col-sm-12">
                           <asp:GridView ID="gridview_measurement" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" CssClass="table table-striped table-bordered dataTable no-footer" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"   >
                                                           <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField HeaderText="Id">
                                                           <ItemTemplate>
                                                               <%#Container.DataItemIndex+1 %>
                                                           </ItemTemplate>
                                                       </asp:TemplateField>
                                <asp:BoundField DataField="user_id" HeaderText="Customer Id" />
                                <asp:BoundField DataField="name" HeaderText="Name" />
                                <asp:BoundField DataField="emailid" HeaderText="emailid" />
                                 <asp:BoundField DataField="mobile" HeaderText="Contact No" />
                                   <asp:BoundField DataField="Address" HeaderText="Address" />


                                <asp:BoundField DataField="doc" HeaderText="Date_Of_Creation" />
                                 
                                

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
                 
                          </div></div>
<br /><br />

                        
                        <asp:HiddenField ID="HiddenField1" runat="server" /> 
                      
                      
                      
                      


     <br />                

                     
             

                        
                    </div>
                  </div>
                </div>
              </div>
            </div>
</asp:Content>

