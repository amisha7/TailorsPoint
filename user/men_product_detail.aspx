<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="men_product_detail.aspx.cs" Inherits="user_men_product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function SetStyleID(element) {
            var ids = $("#ContentPlaceHolder1_hdnstyleid").val();
            if (ids.indexOf($(element).siblings('p').text()) <= -1) {
                // ids += $(element).attr('id') + ",";
                ids += $(element).siblings('p').text() + ",";
                $("#ContentPlaceHolder1_hdnstyleid").val(ids.substr(0));
            }
            $("#ContentPlaceHolder1_hdnstylename").val($(element).siblings('p').text());
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div role="main" class="main">

        <!-- Begin page top -->
        <section class="page-top">


            <asp:HiddenField ID="HiddenField2" runat="server" />
          
            <%--<div class="container">
                <div class="page-top-in">
                    <ol class="breadcrumb pull-left">
                        <li><a href="#">Men</a></li>
                        <li><a href="#">Jeans</a></li>
                        <li class="active">Checked Jeans</li>
                    </ol>
                    <ul class="pager pull-right">
                        <li><a href="#">&laquo; Previous</a></li>
                        <li><a href="#">Next &raquo;</a></li>
                    </ul>
                </div>
            </div>--%>
        </section>
        <!-- End page top -->

        <div class="container">
            <div class="row">

                <div class="col-sm-6">
                    <div class="product-preview">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="">

                                    <asp:Image ID="Image1" Height="650" Width="500" runat="server" alt="" CssClass="img-responsive" />

                                </li>
                                <li data-thumb="">
                                    <asp:Image ID="Image2" Height="650" Width="500" runat="server" alt="" CssClass="img-responsive" />

                                </li>

                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-sm-6">
                    <div class="summary entry-summary">




                        <h3>
                            <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></h3>

                        <div class="reviews-counter clearfix">
                            <div class="rating five-stars pull-left">
                                <div class="star-rating"></div>
                                <div class="star-bg"></div>
                            </div>



                        </div>


                        <p class="price">
                            <span class="amount">
                                Rs.
                                <asp:Label ID="lbl_price" runat="server" Text=""></asp:Label></span>
                        </p>

                        <asp:Label ID="Label7" runat="server" Text="Select Any One Option For Measurement." ForeColor="black" Font-Bold="true"></asp:Label><br /><br />
                        <ul class="list-inline list-select clearfix">
                            <li>
                                <div class="list-sort">
                                    <asp:DropDownList ID="drop_size" runat="server" Width="200" Height="40" AutoPostBack="true" OnSelectedIndexChanged="drop_size_SelectedIndexChanged1">

                                    </asp:DropDownList>
                                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="false"></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="false"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="You can select only one option!" Visible="false" ForeColor="Red"></asp:Label>

                                </div>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="--------------------OR-------------------"></asp:Label><br />
                                <br />
                                <div>

                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-icon" OnClick="LinkButton1_Click"><i class="fa fa-home"></i>Doorstep Measurement</asp:LinkButton>
<%--                                    <asp:Button ID="Button1" runat="server" Text="Doorstep Measurement" CssClass="btn btn-primary btn-icon" OnClick="Button1_Click"/><br />--%>
                                    <asp:Label ID="Label3" runat="server" Text="You can select only one option!" Visible="false" ForeColor="Red"></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text="Please select any one option for measurement" Visible="false" ForeColor="Red"></asp:Label>
                                       </div>
                            </li>
                        </ul>

                        <div method="post" class="cart">
                            <div class="pull-left">

                                <asp:Label ID="lbl_qty" runat="server" Text="Quantity" Font-Italic="True" Font-Size="Larger"></asp:Label>
                                <asp:TextBox ID="txt_qty" runat="server" Rows="7" TextMode="Number" Height="35" Text="1" min="1">1</asp:TextBox>
                            </div>

<%--                            <button id="addtocart" runat="server" class="btn btn-primary btn-icon"  ><i class="fa fa-shopping-cart"></i>Add to cart</button>--%>
                            <asp:Button ID="addtocart" runat="server" Text="Add to cart" CssClass="btn btn-primary btn-icon" OnClick="addtocart_Click"/>
                         </div>
                        <%--<ul class="list-unstyled product-meta">
								<li>Sku: 54329843</li>
								<li>Categories: <a href="#">Leather</a> <a href="#">Jeans</a> <a href="#">Men</a></li>
								<li>Tags: <a href="#">Shoes</a> <a href="#">Jeans</a> <a href="#">Men</a> <a href="#">T-shirt</a></li>
							</ul>--%>
                        <asp:HiddenField ID="hdnstyleid" runat="server" Value="" />
                        <asp:HiddenField ID="hdnstylename" runat="server" Value="" />
                        <h3 style="font-weight: bold; color: #808080;">CHANGE STYLE</h3>
                        <div class="panel-group" id="accordion" style="border: solid 1px black; border-top: none">
                            <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdpid" runat="server" Value='<%# Eval("Id") %>' />

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href='#<%# Eval("Id") %>'><%# Eval("name") %></a> </h4>
                                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                        </div>
                                        <div id='<%# Eval("Id") %>' class="panel-collapse collapse" style="border-top: 1px solid black">
                                            <div class="panel-body">
                                                <div class="col-md-12">
                                                    <br />
                                                    <asp:Repeater ID="listing" runat="server">
                                                        <ItemTemplate>
                                                            <div class="col-md-4">
                                                                <a href="#" id="c1" runat="server">
                                                                    <asp:Image ID="Image3" runat="server" ImageUrl='<%# string.Format("../Admin/images/{0}", Eval("image1")) %>' float="left"  Height="70" Width="70"/></a>
                                                                <br />
                                                                <input type="radio" id='<%# Eval("Id") %>' onclick="SetStyleID(this)" style="float:left" name='<%# Eval("style_id") %>'/+/>
                                                                <p><%# Eval("s_name") %></p>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <%--<asp:Panel ID="pnl_shirt" runat="server">
                        <div class="panel-group" id="accordion" style="border: solid 1px black; border-top: none">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">collar</a> </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                      <div class="col-md-12">
                                          <div class="col-md-3">
                                     <a href="#" id="c1" runat="server" >    <asp:Image ID="Image3" runat="server" imageurl="change_image/collar_button_down_70x70.jpg" float="left" /></a>                                     <br /><p>collar down</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image4" runat="server" imageurl="change_image/collar_narrow_classic_70x70.jpg" />
                                          <br /><h7>collar narrow</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image5" runat="server" imageurl="change_image/collar_regular_classic_70x70.jpg" />
                                          <br /><p>collar regular</p>
                                          </div>
                                         <div class="col-md-3">
                                          <asp:Image ID="Image6" runat="server" imageurl="change_image/collar_super_narrow_classic_70x70.jpg" /> 
                                          <br /><p>collar super narrow</p>
                                          </div>
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Placket</a> </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">

                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image7" runat="server" imageurl="change_image/placket_tuxedo_frills_70x70.jpg"  float="left" />
                                          <br /><p>placket frills</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image8" runat="server" imageurl="change_image/placket_with_placket_70x70.jpg"  />
                                          <br /><h7>placket wih</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image9" runat="server" imageurl="change_image/placket_without_placket_70x70.jpg"  />
                                          <br /><p>placket without</p>
                                          </div>
                                         
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Buttons+Thread</a> </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body post-comments">
                                        <div class="col-md-12">
                                          <div class="col-md-2">
                                          <asp:Image ID="Image10" runat="server" imageurl="change_image/buttons_thread_buttons_black_70x70.jpg" float="left" />
                                              </div>
                                          <div class="col-md-2">
                                          <asp:Image ID="Image11" runat="server" imageurl="change_image/buttons_thread_buttons_black_pearl_70x70.jpg"  />
                                          
                                        </div>
                                          <div class="col-md-2">
                                          <asp:Image ID="Image12" runat="server" imageurl="change_image/buttons_thread_buttons_white_70x70.jpg"  />
                                          
                                          </div>
                                        
                                        </div>   
                                        <div class="col-md-6">
                                        <div class="col-md-2">
                                          <asp:Image ID="Image13" runat="server" imageurl="change_image/buttons_thread_thread_color_dark_green_70x70.jpg"  />
                                          
                                          </div>
                                        <div class="col-md-2">
                                          <asp:Image ID="Image14" runat="server" imageurl="change_image/buttons_thread_thread_color_matching_70x70.jpg"   />
                                          
                                          </div>
                                    <div class="col-md-2">
                                          <asp:Image ID="Image15" runat="server" imageurl="change_image/buttons_thread_thread_color_pink_70x70.jpg"   />
                                          
                                          </div>
                                       
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">Pocket</a> </h4>
                                </div>
                                <div id="collapsefour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image16" runat="server" imageurl="change_image/pocket_no_pocket_70x70.jpg" float="left" />
                                          <br /><p>no pocket</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image17" runat="server" imageurl="" />
                                          <br /><h7>one pocket</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image18" runat="server" imageurl=""/>
                                          <br /><p>two pocket</p>
                                          </div>
                                         
                                          </div>
                                      </div>
                                    </div>
                                </div>
                           
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Bottom Style</a> </h4>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image22" runat="server" imageurl="change_image/bottom_style_curved_bottom_70x70.jpg"  float="left" />
                                          <br /><p>curevd style</p>
                                          </div>
                                          
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Pleat at Back</a> </h4>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image25" runat="server" imageurl="change_image/pleat_at_back_centre_box_pleat_70x70.jpg"  float="left" />
                                          <br /><p>pleat at back center box</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image26" runat="server" imageurl="change_image/pleat_at_back_no_pleat_70x70.jpg"  />
                                          <br /><h7>no pleat</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image27" runat="server" imageurl="change_image/pleat_at_back_side_pinch_pleat_70x70.jpg" />
                                          <br /><p>pinch pleat</p>
                                          </div>
                                         
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Cuff</a> </h4>
                                </div>
                                <div id="collapse7" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image19" runat="server" imageurl="change_image/cuff_french_cuff_70x70.jpg"   float="left" />
                                          <br /><p>french cuff</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image20" runat="server" imageurl="change_image/cuff_regular_cuff_70x70.jpg"   />
                                          <br /><h7>regular cuff</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image21" runat="server" imageurl="change_image/cuff_short_sleeve_70x70.jpg"/>
                                          <br /><p>short sleeve cuff</p>
                                          </div>
                                         
                                          </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                         </asp:Panel>--%>

                        <%--<asp:Panel ID="pnl_pent" runat="server">
                        <div class="panel-group" id="Div2" style="border: solid 1px black; border-top: none">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">placket</a> </h4>
                                </div>
                                <div id="Div3" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                      <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image23" runat="server" imageurl="change_image/collar_button_down_70x70.jpg" float="left" />
                                          <br /><p>collar down</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image24" runat="server" imageurl="change_image/collar_narrow_classic_70x70.jpg" />
                                          <br /><h7>collar narrow</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image28" runat="server" imageurl="change_image/collar_regular_classic_70x70.jpg" />
                                          <br /><p>collar regular</p>
                                          </div>
                                         <div class="col-md-3">
                                          <asp:Image ID="Image29" runat="server" imageurl="change_image/collar_super_narrow_classic_70x70.jpg" /> 
                                          <br /><p>collar super narrow</p>
                                          </div>
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Placket</a> </h4>
                                </div>
                                <div id="Div4" class="panel-collapse collapse">

                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image30" runat="server" imageurl="change_image/placket_tuxedo_frills_70x70.jpg"  float="left" />
                                          <br /><p>placket frills</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image31" runat="server" imageurl="change_image/placket_with_placket_70x70.jpg"  />
                                          <br /><h7>placket wih</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image32" runat="server" imageurl="change_image/placket_without_placket_70x70.jpg"  />
                                          <br /><p>placket without</p>
                                          </div>
                                         
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Buttons+Thread</a> </h4>
                                </div>
                                <div id="Div5" class="panel-collapse collapse">
                                    <div class="panel-body post-comments">
                                        <div class="col-md-12">
                                          <div class="col-md-2">
                                          <asp:Image ID="Image33" runat="server" imageurl="change_image/buttons_thread_buttons_black_70x70.jpg" float="left" />
                                              </div>
                                          <div class="col-md-2">
                                          <asp:Image ID="Image34" runat="server" imageurl="change_image/buttons_thread_buttons_black_pearl_70x70.jpg"  />
                                          
                                        </div>
                                          <div class="col-md-2">
                                          <asp:Image ID="Image35" runat="server" imageurl="change_image/buttons_thread_buttons_white_70x70.jpg"  />
                                          
                                          </div>
                                        
                                        </div>   
                                        <div class="col-md-6">
                                        <div class="col-md-2">
                                          <asp:Image ID="Image36" runat="server" imageurl="change_image/buttons_thread_thread_color_dark_green_70x70.jpg"  />
                                          
                                          </div>
                                        <div class="col-md-2">
                                          <asp:Image ID="Image37" runat="server" imageurl="change_image/buttons_thread_thread_color_matching_70x70.jpg"   />
                                          
                                          </div>
                                    <div class="col-md-2">
                                          <asp:Image ID="Image38" runat="server" imageurl="change_image/buttons_thread_thread_color_pink_70x70.jpg"   />
                                          
                                          </div>
                                       
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">Pocket</a> </h4>
                                </div>
                                <div id="Div6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image39" runat="server" imageurl="change_image/pocket_no_pocket_70x70.jpg" float="left" />
                                          <br /><p>no pocket</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image40" runat="server" imageurl="" />
                                          <br /><h7>one pocket</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image41" runat="server" imageurl=""/>
                                          <br /><p>two pocket</p>
                                          </div>
                                         
                                          </div>
                                      </div>
                                    </div>
                                </div>
                           
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Bottom Style</a> </h4>
                                </div>
                                <div id="Div7" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image42" runat="server" imageurl="change_image/bottom_style_curved_bottom_70x70.jpg"  float="left" />
                                          <br /><p>curevd style</p>
                                          </div>
                                          
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Pleat at Back</a> </h4>
                                </div>
                                <div id="Div8" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image43" runat="server" imageurl="change_image/pleat_at_back_centre_box_pleat_70x70.jpg"  float="left" />
                                          <br /><p>pleat at back center box</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image44" runat="server" imageurl="change_image/pleat_at_back_no_pleat_70x70.jpg"  />
                                          <br /><h7>no pleat</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image45" runat="server" imageurl="change_image/pleat_at_back_side_pinch_pleat_70x70.jpg" />
                                          <br /><p>pinch pleat</p>
                                          </div>
                                         
                                          </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Cuff</a> </h4>
                                </div>
                                <div id="Div9" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <div class="col-md-12">
                                          <div class="col-md-3">
                                          <asp:Image ID="Image46" runat="server" imageurl="change_image/cuff_french_cuff_70x70.jpg"   float="left" />
                                          <br /><p>french cuff</p>
                                          </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image47" runat="server" imageurl="change_image/cuff_regular_cuff_70x70.jpg"   />
                                          <br /><h7>regular cuff</h7>
                                        </div>
                                          <div class="col-md-3">
                                          <asp:Image ID="Image48" runat="server" imageurl="change_image/cuff_short_sleeve_70x70.jpg"/>
                                          <br /><p>short sleeve cuff</p>
                                          </div>
                                         
                                          </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                         </asp:Panel>--%>
                        <br />
                        <br />
                        <asp:Label ID="lbl_panel" runat="server" Text="" Visible="false"></asp:Label>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion">Descriptions</a> </h4>
                            </div>
                            <div id="Div1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>
                                        <asp:Label ID="lbl_des" runat="server" Text=""></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>



            </div>
        </div>

        <!-- Begin Related Products -->
        <%--<section class="products-slide">
				<div class="container">
					<h2 class="title"><span>Related Products</span></h2>
					<div class="row">
						<div id="owl-product-slide" class="owl-carousel product-slide">
							<div class="col-md-12">
								<div class="item product">
									<div class="product-thumb-info">
										
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-1.jpg">
										</div>
										
										<div class="product-thumb-info-content">
											<span class="price pull-right">29.99 USD</span>
											<h4><a href="shop-product-detail2.html">Denim shirt</a></h4>
											<span class="item-cat"><small><a href="#">Jackets</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="item product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-2.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">25.99 USD</span>
											<h4><a href="shop-product-detail2.html">Poplin shirt with fine pleated bands</a></h4>
											<span class="item-cat"><small><a href="#">Shirts</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="item product">
									<a href="shop-product-detail1.html">
										<span class="bag bag-hot">Hot</span>
									</a>
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-3.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">25.99 USD</span>
											<h4><a href="shop-product-detail2.html">Contrasting shirt</a></h4>
											<span class="item-cat"><small><a href="#">Stock clearance</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="item product">
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-4.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">59.99 USD</span>
											<h4><a href="shop-product-detail2.html">Waistcoat with top stitching</a></h4>
											<span class="item-cat"><small><a href="#">Blazers</a></small></span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="item product">
									<a href="shop-product-detail1.html">
										<span class="bag bag-cool">Cool</span>
									</a>
									<div class="product-thumb-info">
										<div class="product-thumb-info-image">
											<span class="product-thumb-info-act">
												<a href="javascript:void(0);" data-toggle="modal" data-target=".quickview-wrapper" class="view-product">
													<span><i class="fa fa-external-link"></i></span>
												</a>
												<a href="shop-cart-full.html" class="add-to-cart-product">
													<span><i class="fa fa-shopping-cart"></i></span>
												</a>
											</span>
											<img alt="" class="img-responsive" src="images/content/products/product-5.jpg">
										</div>
										<div class="product-thumb-info-content">
											<span class="price pull-right">39.99 USD</span>
											<h4><a href="shop-product-detail2.html">Loose fit ripped jeans</a></h4>
											<span class="item-cat"><small><a href="#">Jeans</a></small></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>--%>
        <!-- End Top Selling -->

    </div>
    <!-- End Main -->





</asp:Content>

