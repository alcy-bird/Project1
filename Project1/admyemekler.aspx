<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admyemekler.aspx.cs" Inherits="Project1.admyemekler" %>
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
        .auto-style22 {
            text-align: center;
            font-size: large;
            background-color: #CCCCFF;
        }
        .auto-style19 {
            margin-left: 40px;
        }
        .auto-style16 {
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style24 {
            font-size: large;
            background-color: #CCCCFF;
        }
        .auto-style26 {
            background-color: #3F8EA6;
        }
        .auto-style27 {
            text-align: center;
            background-color: #3F8EA6;
        }
        .auto-style28 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style29 {
            width: 40px;
            text-align: center;
            background-color: #CCCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style27">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style21"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                        </strong></td>
                    <td class="auto-style24"><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style26">
        <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("yemek_adi") %>'></asp:Label>
                        </td>
                        <td class="auto-style14"><a href="admyemekler.aspx?yemek_id=<%#Eval("yemek_id")%>&islem=sil" style =" text-decoration:none;">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete1.png" Width="30px" />
                            </a></td>
                        <td class="auto-style14"><a href="admyemekduzenle.aspx?yemek_id=<%#Eval("yemek_id")%>" style="text-decoration:none;">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update1.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style26">
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style22"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style26">
        <table class="auto-style10">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">YEMEK AD </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="214px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">YEMEK MALZEMELER </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="120px" TextMode="MultiLine" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">TARİF</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" Height="185px" TextMode="MultiLine" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">KATEGORİ</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="217px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style16" Height="41px" OnClick="btnekle_Click" Text="EKLE" Width="179px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
