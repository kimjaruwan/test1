﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportType.aspx.cs" Inherits="MyWebApplication.reportType" %>

<!DOCTYPE html>

<html>
 <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>ระบบแจ้งเรื่องร้องเรียนงานซ่อมบำรุง</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
      

    </head>
<body  class="sb-nav-fixed">
     <!--#include file="menuAdmin.aspx"-->
    <form id="form1" runat="server">
        
        <div id="layoutSidenav_content">
            <main>
         
               <div style="text-align:center;">
<center>
                <h1>รายงานประเภทคำร้องเรียน<asp:Label ID="nameLabel" runat="server"></asp:Label>
                        </h1>
                   <center>
                  <table >
                      <tr>
                          <td>
                              <asp:Label ID="month" runat="server" Text="เดือน"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>เลือก</asp:ListItem>
                                  <asp:ListItem>มกราคม</asp:ListItem>
                                  <asp:ListItem>กุมภาพันธ์</asp:ListItem>
                                  <asp:ListItem>มีนาคม</asp:ListItem>
                                  <asp:ListItem>เมษายน</asp:ListItem>
                                  <asp:ListItem>พฤษภาคม</asp:ListItem>
                                  <asp:ListItem>มิถุนายน</asp:ListItem>
                                  <asp:ListItem>กรกฎาคม</asp:ListItem>
                                  <asp:ListItem>สิงหาคม</asp:ListItem>
                                  <asp:ListItem>กันยายน</asp:ListItem>
                                  <asp:ListItem>ตุลาคม</asp:ListItem>
                                  <asp:ListItem>พฤศจิกายน</asp:ListItem>
                                  <asp:ListItem>ธันวาคม</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                           <td>
                              <asp:Label ID="year" runat="server" Text="ปี"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="DropDownList2" runat="server" >
                              <asp:ListItem>เลือก</asp:ListItem>
                                  <asp:ListItem>2021</asp:ListItem>
                                  <asp:ListItem>2022</asp:ListItem>
                                  <asp:ListItem>2023</asp:ListItem>
                                
                              </asp:DropDownList>
                          </td>

                         
                          <td>
                          <asp:Button ID="get" runat="server" Text="เรียกดูข้อมูล" OnClick="get_Click" />
                            </td>


                      </tr>


                  </table>
</center>

                    
<%--<asp:Button Text="Export" ID="btnExport" OnClick="btnExport_Click" runat="server" />--%>
     <asp:GridView ID="GridView1" runat="server" Width="1000px" CellPadding="8" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="PETITION_CODE" HeaderText="PETITION CODE" />
                                        <asp:BoundField DataField="PETITIONTITLE" HeaderText="PETITION TITLE" />
                                        <asp:BoundField DataField="STATUSNAME" HeaderText="STATUS" />
                                        <asp:BoundField DataField="PETITIONNAME" HeaderText="PETITION TYPE" />
                                    </Columns>
                                    <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    <RowStyle BorderColor="#666666" />
                                </asp:GridView>
    <table><tr>
 <td>

<asp:Label ID="total" runat="server" Text="ประเภทระบบไฟฟ้า รวม : "></asp:Label>

      <asp:Label ID="showTotal1" runat="server" Text=""></asp:Label>
    <asp:Label ID="unit1" runat="server" Text=" คำร้องเรียน"></asp:Label>


 </td>
       </tr>   
      <tr>
    <td>
 <asp:Label ID="Label1" runat="server" Text="ประเภทระบบประปา รวม : "></asp:Label>

      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label3" runat="server" Text=" คำร้องเรียน"></asp:Label>
    </td>
      </tr> 
        <tr>
        <td>
<asp:Label ID="Label4" runat="server" Text="ประเภทรักษาความปลอดภัยรวม รวม : "></asp:Label>

      <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label6" runat="server" Text=" คำร้องเรียน"></asp:Label>
        </td>
       </tr>

            <tr>
        <td>
<asp:Label ID="Label7" runat="server" Text="ประเภทพื้นที่ส่วนกลาง รวม : "></asp:Label>

      <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label9" runat="server" Text=" คำร้องเรียน"></asp:Label>
        </td>
       </tr>

        <tr>
        <td>
<asp:Label ID="Label10" runat="server" Text="ประเภทพนักงาน รวม : "></asp:Label>

      <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label12" runat="server" Text=" คำร้องเรียน"></asp:Label>
        </td>
       </tr>
 
        <tr>
        <td>
<asp:Label ID="Label13" runat="server" Text="ประเภทอื่นๆ รวม : "></asp:Label>

      <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label15" runat="server" Text=" คำร้องเรียน"></asp:Label>
        </td>
       </tr>
</table>

      </div>

                   </main>
        </div>
       
    </form>
</body>
</html>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>