<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admtarifonerdetay.aspx.cs" Inherits="Project1.admtarifonerdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
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
            <td class="auto-style14">TARİF AD :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">MALZEMELER :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" Width="266px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">YAPILIŞI :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="162px" TextMode="MultiLine" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">TARİF RESİM :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">TARİF ÖNEREN :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">ÖNEREN MAİL :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="269px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">KATEGORİ:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="275px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="46px" Text="ONAYLA" Width="212px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
