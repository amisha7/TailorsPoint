<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .txt:hover {
            border: 5px solid navy;
        }
    </style>

    <!-- Begin Main -->
    <div role="main" class="main">

        <!-- Begin page top -->
        <section class="page-top-md">
            <div class="container">
                <div class="page-top-in">
                    <h2><span>Feedback</span></h2>
                </div>
            </div>
        </section>
        <!-- End page top -->
        <%--  --%>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="blog-posts single-post">
                        <article class="post post-large blog-single-post">
                            <h3>Standard Post</h3>
                            <%--<div class="post-meta">
                                <span>By <a href="#">John Doe</a> in <a href="#">Blog</a></span>
                                <span><i class="fa fa-clock-o"></i>July 9, 2014</span>
                                <span><i class="fa fa-comment-o"></i><a href="#">212 Comments</a></span>
                            </div>--%>
                            <div class="post-image single">
                                <img class="img-responsive" src="images/content/blog/demo-3.jpg" alt="Blog">
                            </div>
                            <div class="post-block post-comments clearfix">
                                
                                <ul class="comments">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                    <li>
                                        <div class="comment">
                                            <div class="img-circle">
                                                <img class="avatar" width="50" alt="" src="images/content/blog/avatar.png">
                                            </div>
                                            <div class="comment-block">
                                                <span class="comment-by" style="font-size:large;color:hotpink"><strong><%#Eval("name") %></strong></span>
                                                <span class="date"><small><i class="fa fa-clock-o"></i>'<%# Eval("doc") %>'</small></span>
                                                <p>'<%# Eval("comment") %>'</p>
                                               
                                            </div>
                                        </div>
                                        
                                    </li>
                                    
                                    
                                     </ItemTemplate> </asp:Repeater>
                                </ul>
                            </div>
                            <div class="post-block post-leave-comment">
                                <h3>Leave a comment</h3>
                                <p><small>Make sure you enter the (*) required information where indicated. </small></p>
                                <form action="#" type="post">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-xs-6">

                                                <asp:Label ID="Label1" runat="server" Text="Your Name*"></asp:Label>
                                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Put here !"  Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="feedback"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-xs-6">

                                                <asp:Label ID="Label2" runat="server" Text="Your email address *"></asp:Label>
                                                <asp:TextBox ID="TextBox2"  runat="server" MaxLength="100" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Put here !"  Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="feedback"></asp:RequiredFieldValidator>

                                                  </div>
                                        </div>
                                    </div>
                                    <%--<div class="form-group">
											<div class="row">
												<div class="col-sm-12">
													
                                                    <asp:Label ID="Label3" runat="server" Text="Website URL"></asp:Label>
                                                    <asp:TextBox ID="TextBox3" runat="server" maxlength="100" CssClass="form-control"></asp:TextBox>
												</div>
											</div>
										</div>--%>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <asp:Label ID="Label4" runat="server" Text="Comment *"></asp:Label>
                                                <asp:TextBox ID="TextBox4" runat="server" MaxLength="5000" Rows="10" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                       
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Put here !"  Font-Bold="True" Font-Size="Small" ForeColor="Red" ControlToValidate="TextBox4" ValidationGroup="feedback"></asp:RequiredFieldValidator>
                                             </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button ID="btn_submit" ValidationGroup="feedback" runat="server" Text="Post Comment" CssClass="btn btn-sm" data-loading-text="Loading..." OnClick="btn_submit_Click" />

                                        </div>
                                    </div>
                                </form>
                            </div>
                        </article>

                    </div>
                </div>

            </div>
        </div>

    </div>
    <!-- End Main -->

</asp:Content>

