<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admmesajlar.aspx.cs" Inherits="Project1.admmesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17 {
            width: 41px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style18 {
            width: 313px;
            height: 23px;
        }
        .auto-style14 {
        text-align: right;
            height: 23px;
        }
        .auto-style24 {
            width: 40px;
            text-align: center;
            background-color: #CCCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style15"><strong>MASAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("mesaj_gonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style14"> 
                            <a href="admmesajdetay.aspx?mesaj_id=<%#Eval("mesaj_id")%>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/Icons8-Ios7-Programming-Show-Property.ico" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
