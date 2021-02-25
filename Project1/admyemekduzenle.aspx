<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admyemekduzenle.aspx.cs" Inherits="Project1.amdyemekduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            text-align: left;
            width: 292px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">YEMEK ADİ:</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">MALZEMELER : </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">TARİF :</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">KATEFORİ :</td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="275px" Height="16px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">YEMEK RESMİ:</td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="35px" Text="GÜNCELLE" OnClick="Button1_Click" Width="279px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style3" Height="35px" Text="günün yemeği seç"  Width="281px" OnClick="Button2_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
