﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="eLIBRARY.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Publisher Details </h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="images/publisher.png"/>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-4">
                        <label>Publisher ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-secondary " ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                            </div>
                     </div>
                       <div class="col-md-5">
                           <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Author Name" TextMode="SingleLine"></asp:TextBox>
                        </div>
                  </div>
                       </div>
                   
                   <div class="row">
                       <div class="col-md-4">
                   <asp:Button class="btn btn-success btn-block btn-lg " ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />

                       </div>

                       <div class="col-md-4">
                   <asp:Button class="btn btn-warning btn-block btn-lg " ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />

                       </div>
                       <div class="col-md-4">
                   <asp:Button class="btn btn-danger btn-block btn-lg " ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />

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
                           <h4>Publisher  List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tb1]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
          </div>
          </div>
</asp:Content>
