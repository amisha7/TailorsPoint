<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_master.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">
             
            
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count" style="border:dashed;height:100px; margin-left:30px;border-color:deeppink;background-color:deeppink;color:white">
              <span class="count_top" style="font-size:15px"><i class="fa fa-user"></i> Total Users</span>
              <div class="count">
                  <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" style="padding-left:70px;font-size:30px" Font-Size="Larger"></asp:Label></div>
              
            </div>
        <asp:HiddenField ID="HiddenField2" runat="server" />
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count" style="height:100px;border:solid; margin-left:30px;background-color:darkblue;color:white">
              <span class="count_top" style="font-size:15px"><i class="fa fa-male"></i> Total Males</span>
              <div class="count "><asp:Label ID="Label5" runat="server" Text="" Font-Bold="True" style="padding-left:70px;font-size:30px"  Font-Size="Larger"></asp:Label></div></div>
              

          
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count" style=" height:100px;border:solid;margin-left:30px;border-color:darkolivegreen;background-color:darkolivegreen;color:white;">
              <span class="count_top" style="font-size:15px"><i class="fa fa-female"></i> Total Females</span>
              <div class="count"><asp:Label ID="Label3" runat="server" Text=""  Font-Bold="True" style="padding-left:70px;font-size:30px"  Font-Size="Larger"></asp:Label></div>
            
            </div>
            <div class="col-md-2 col-sm-5 col-xs-6 tile_stats_count" style="height:100px;border:solid;margin-left:30px;border-color:orange;background-color:orange;color:white">
              <span class="count_top"  style="font-size:15px"><i class="fa fa-user"></i> Total Collections</span>
              <div class="count"><asp:Label ID="Label2" runat="server" Text=""   Font-Bold="True" style="padding-left:70px;font-size:30px"  Font-Size="Larger"></asp:Label></div>
             
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count" style="height:100px;border:solid;margin-left:30px;border-color:darkred;background-color:darkred;color:white;">
              <span class="count_top"  style="font-size:15px;"><i class="fa fa-shopping-cart"></i> Total Order</span>
              <div class="count"><asp:Label ID="Label4" runat="server" Text=""   Font-Bold="True" style="padding-left:70px;font-size:30px"  Font-Size="Larger" ForeColor="White"></asp:Label></div>
              
            </div>
 <br /><br /><br /><br /> <br /><br /><div class="ln_solid"></div>
                  <asp:HiddenField ID="HiddenField1" runat="server" />
         
                  <div class="form-group">
                       
                         
             <font  size="4">     <asp:Label ID="Label6" runat="server" Text=""  CssClass="control-label col-md-5 col-sm-4 col-xs-12" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#000066"></asp:Label>

          </div><br /><br /><br /><br />


        <div class="col-md-12 col-sm-12 col-xs-12">
                     <div class="col-md-2 col-sm-4 col-xs-6 " float="left">  
                  <asp:Image ID="Image1" runat="server" CssClass="img-rounded" Height ="200" Width="140" style="border-color:black;border-width:10px;border-style:double"  />
                    </div>
                <div class="col-md-8 col-sm-6 col-xs-12 " style="margin-left:20px;background-color:lightgray;color:black">
                     <div class="form-group">
                        <label class="control-label col-md-5 col-sm-2 col-xs-12 " for="first-name"><font color="black" size="4"><center>Admin Information</center></font> 
                            </label>                      

                      </div>
                    <br />
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12 " for="first-name"><font color="black" size="2">Full Name :</font> 
                        </label>
                         <font color="black" size="2"> <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label> </font>                   
                    
                      </div>
                
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12 " for="first-name"><font color="black" size="2">Emailid :</font> 
                        </label> 
                         <font color="black" size="2"><asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                    </div>
                
               
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12 " for="first-name"><font color="black" size="2"> Address :
                                                                                                                      </font> 
                        </label> 
                        <font color="black" size="2"> <asp:Label ID="lbl_address" runat="server" Text="Label"></asp:Label></font>                                      
                      </div>
               
                
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-3 col-xs-12 " for="first-name"><font color="black" size="2">UserType  :                                                                                                                    </font> 
                        </label> 
                        <font color="black" size="2"> <asp:Label ID="lbl_type" runat="server" Text="Label"></asp:Label></font>                                      
                      </div>
               
                    
                    
                    
                    
                    <br />  
                  
       </div>
                   </div>
</asp:Content>

