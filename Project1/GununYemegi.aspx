<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Project1.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Height="1285px" Width="449px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%#Eval("yemek_adi")%>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        MALZEMELER :<br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yemek_malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        YAPILIŞI :<br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemek_tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="165px" Width="367px" ImageUrl='<%# Eval("yemek_img") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Puan :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yemek_puan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tarih :
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("yemek_tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
    
    
    </asp:Content>
