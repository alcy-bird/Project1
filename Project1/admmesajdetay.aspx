<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admmesajdetay.aspx.cs" Inherits="Project1.admmesajdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 189px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">MESAJ GÖNDEREN :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">BAŞLIK :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">E-MAİL :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">MESAJ İÇERİK :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="176px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
