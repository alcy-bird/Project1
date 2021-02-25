<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Project1.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
            background-color: #FFCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Ad :</td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Height="24px" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Malzeme :</td>
            <td>
                <asp:TextBox ID="txtTarifMalzeme" runat="server" Height="84px" TextMode="MultiLine" Width="263px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yapılışı :</td>
            <td>
                <asp:TextBox ID="txtTarifYapilis" runat="server" Height="176px" TextMode="MultiLine" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim :</td>
            <td>
                <asp:FileUpload ID="TarifImg" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif Öneren :</td>
            <td>
                <asp:TextBox ID="txtTarifOneren" runat="server" Height="21px" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">E-Mail :</td>
            <td>
                <asp:TextBox ID="txtOnerenMail" runat="server" Height="20px" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="btnGonder" runat="server" CssClass="auto-style8" Height="43px" Text="Tarif Öner" Width="274px" OnClick="btnGonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
