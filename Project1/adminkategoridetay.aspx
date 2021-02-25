<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminkategoridetay.aspx.cs" Inherits="Project1.adminkategoridetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style14"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>KATEGORİ AD :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>ADET :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>RESİM :</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong></strong></td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="GÜNCELLE" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
