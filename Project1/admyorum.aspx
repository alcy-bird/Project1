<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admyorum.aspx.cs" Inherits="Project1.admyorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style15 {
            text-align: center;
        }
        .auto-style17 {
            width: 41px;
        background-color: #CCCCFF;
    }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style18 {
            width: 313px;
        }
        .auto-style14 {
        text-align: right;
    }
        .auto-style21 {
            width: 41px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style24 {
        background-color: #CCCCFF;
    }
        .auto-style25 {
            background-color: #CCCCFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style24"><strong>ONAYLI YORUM</strong> <strong>&nbsp;LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
</div>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList2" runat="server" Height="188px" Width="448px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("yorum_adi") %>'></asp:Label>
                    </td>
                    <td class="auto-style14"><a href="admyorum.aspx?yorum_id=<%#Eval("yorum_id")%>&islem=sil" style =" text-decoration:none;">
                        <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete1.png" Width="30px" />
                        </a></td>
                    <td class="auto-style14"><a href="admyorumdetay.aspx?yorum_id=<%#Eval("yorum_id")%>" style="text-decoration:none;">
                        <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/update1.png" Width="30px" />
                        </a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
<asp:Panel ID="Panel3" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style21"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                </strong></td>
            <td class="auto-style21"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                </strong></td>
            <td class="auto-style25"><strong>ONAYSIZ</strong> <strong>YORUM</strong> <strong>&nbsp;LİSTESİ</strong></td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("yorum_adi") %>'></asp:Label>
                    </td>
                    <td class="auto-style14"><a href="admyorum.aspx?yorum_id=<%#Eval("yorum_id")%>&islem=sil" style =" text-decoration:none;">
                        <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete1.png" Width="30px" />
                        </a></td>
                    <td class="auto-style14"><a href="admyorumdetay.aspx?yorum_id=<%#Eval("yorum_id")%>" style="text-decoration:none;">
                        <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/update1.png" Width="30px" />
                        </a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
