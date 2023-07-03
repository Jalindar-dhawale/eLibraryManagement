<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="eLIBRARY.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
     </script>
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
                           <h4>Book Issuing </h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="images/books.png"/>
                        </center>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   <div class="row">
                        <div class="col-md-6">
                           <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
                        </div>
                  </div>
                     <div class="col-md-6">
                        <label>Book ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                              <asp:Button class="btn btn-dark " ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                            </div>
                     </div>
                      
                       </div>

                   <div class="row">
                        <div class="col-md-6">
                           <label>Member Name</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>
                  </div>
                     <div class="col-md-6">
                        <label>Book Name</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                     </div>
                      
                       </div>

                   <div class="row">
                        <div class="col-md-6">
                           <label>Start Date</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                        </div>
                  </div>
                     <div class="col-md-6">
                        <label>Due Date</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                     </div>
                      
                       </div>
                   
                   <div class="row">
                       <div class="col-md-6">
                   <asp:Button class="btn btn-primary btn-block btn-lg " ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />

                       </div>

                       <div class="col-md-6">
                   <asp:Button class="btn btn-success btn-block btn-lg " ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />

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
                           <h4>Issued Book LIst</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_issue_tb1]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound" OnRowDataBound="GridView1_RowDataBound">
                             <Columns>
                                 <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id"></asp:BoundField>
                                 <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name"></asp:BoundField>
                                 <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id"></asp:BoundField>
                                 <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name"></asp:BoundField>
                                 <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date"></asp:BoundField>
                                 <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date"></asp:BoundField>
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
