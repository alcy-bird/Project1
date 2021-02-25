<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admyorumdetay.aspx.cs" Inherits="Project1.admyorumdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td>AD SOYAD: </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>E-MAİL:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İÇERİK:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>YEMEK :</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox4" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="onayla" Width="211px" />
            </td>
        </tr>
    </table>
</asp:Content>
