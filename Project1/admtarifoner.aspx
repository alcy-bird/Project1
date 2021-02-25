<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admtarifoner.aspx.cs" Inherits="Project1.admtarifoner" %>
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
        .auto-style24 {
            width: 40px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style15 {
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style25 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>ONAYSIZ</strong> <strong>TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("tarif_ad") %>'></asp:Label>
                        </td>
                        <td class="auto-style25"> 
                            <a href="admtarifonerdetay.aspx?tarif_id=<%#Eval("tarif_id")%>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/76658-200.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>ONAYLI</strong> <strong>TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Height="188px" Width="448px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("tarif_ad") %>'></asp:Label>
                        </td>
                        <td class="auto-style25"><a href="admtarifonerdetay.aspx?tarif_id=<%#Eval("tarif_id")%>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/76658-200.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
