<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Project1.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;

        }

        .auto-style6 {
            font-size: x-large;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            text-align: center;
            background-color: #CCFFFF;
        }

        .auto-style9 {
            color: #666699;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style8"><strong>

                        <a href="YemekDetay.aspx?yemek_id=<%#Eval("yemek_id") %>">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("yemek_adi") %>'></asp:Label>
                        </a></strong></td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemek_malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Yapılışı :</strong>&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemek_tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Puan :</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("yemek_puan") %>'></asp:Label>
                        &nbsp; -&nbsp; <strong>Yayınlanma Tarihi :&nbsp; </strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text='<%# Eval("yemek_tarih") %>'></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" style="border-style: none none double none">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
