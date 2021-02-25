<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Project1.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style8 {
            border: 2px solid #456789;
            border-radius: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style7" colspan="2"><strong>MESAJ PANELİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style6"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Ad Soyad :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Konu :</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mesaj :</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8" Height="116px" TextMode="MultiLine" Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong></strong></td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="42px" OnClick="Button1_Click" Text="GÖNDER" Width="237px" />
            </td>
        </tr>
    </table>
</asp:Content>
