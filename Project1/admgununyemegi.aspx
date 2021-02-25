<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admgununyemegi.aspx.cs" Inherits="Project1.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style27 {
            text-align: center;
            background-color: #3F8EA6;
        }
        .auto-style17 {
            width: 41px;
            background-color: #CCCCFF;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style21 {
            width: 41px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style24 {
            font-size: large;
            background-color: #CCCCFF;
        }
        .auto-style18 {
            width: 313px;
        }
        .auto-style14 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style27">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style24"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
          <ItemTemplate>
              <table class="auto-style10">
                 <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("yemek_adi") %>'></asp:Label>
                    </td>
                    <td class="auto-style14"><a href="admyemekduzenle.aspx?yemek_id=<%#Eval("yemek_id")%>" style="text-decoration:none;">
                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/068d7590db972bc3064af9e4892c2949.png" Width="30px" />
                        </a></td>
                </tr>
            </table>
        </ItemTemplate>
     </asp:DataList>
    </asp:Panel>
</asp:Content>
