﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="eLIBRARY.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="images/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                        <div class="col-md-3">
                           <label>Member ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary " ID="LinkButton3" runat="server" Text="A" OnClick="Button1_Click"><i class="fas fa-check-circle"></i> </asp:LinkButton>

                                </div>
                            </div>
                  </div>
                     <div class="col-md-4">
                        <label>Full Name</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                         </div>
                         <div class="col-md-5">
                        <label>Account Status</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                <asp:LinkButton class="btn btn-success mr-1 " ID="Button8" runat="server" Text="A"><i class="fas fa-check-circle"></i> </asp:LinkButton>
                                <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton1" runat="server" Text="P"><i class="far fa-pause-circle"></i> </asp:LinkButton>
                                <asp:LinkButton class="btn btn-danger mr-1 " ID="LinkButton2" runat="server" Text="D"><i class="fas fa-times-circle"></i> </asp:LinkButton>

                               
                            
                            </div>
                            </div>
                     </div>
                      
                       </div>

                   <div class="row">
                        <div class="col-md-3">
                           <label>DOB</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="DOB" TextMode="Date" ReadOnly="True"></asp:TextBox>
                        </div>
                  </div>
                     <div class="col-md-4">
                        <label>Contact No</label>
                        <div class="form-group">
                            
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact No" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            
                     </div>
                       <div class="col-md-5">
                        <label>Email Id</label>
                        <div class="form-group">
                            
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email Id" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                            
                     </div>
                      
                       </div>

                   <div class="row">
                        <div class="col-md-4">
                           <label>State</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="State" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>
                  </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            
                     </div>
                       <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pincode" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                          </div>
                      
                       </div>
                   <div class="row">
                     <div class="col">
                        <label>Full Postal Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   
                 
                   <div class="row">
                       <div class="col-8 mx-auto">
                           <asp:Button Class="btn btn-danger btn-lg btn-block" ID="Button1" runat="server" Text="Delete user Permanently " OnClick="Button2_Click1" />
                       </div>
                   </div>
                   
                   
                   
                   </div>
                </div>
             <a href="homepage.aspx"><< Back to Home</a><br><br>
             </div>
          <div class="col-md-7">
<div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Members LIst</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                                <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                            </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tb1]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
          </div>
          </div>
    
</asp:Content>
