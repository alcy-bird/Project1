<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admhakkimizda.aspx.cs" Inherits="Project1.admhakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

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
            text-align: center;
        }
        .auto-style25 {
            height: 29px;
        }
        .auto-style26 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10" >
            <tr>
                <td class="auto-style21" ><strong >
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style21" ><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                    </strong></td>
                <td class="auto-style24"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style25"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style26" Height="217px" TextMode="MultiLine" Width="432px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="47px" OnClick="Button3_Click" Text="GÜNCELLE" Width="149px" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
