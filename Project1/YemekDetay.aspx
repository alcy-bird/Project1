<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Project1.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            background-color: #fff;
            text-align: center;
            height: 29px;
        }
        .auto-style8 {
            margin-left: 40px;
            height: 43px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: right;
            height: 32px;
            width: 703px;
            margin-left: 300px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            text-align: right;
            height: 40px;
            width: 703px;
            margin-left: 300px;
        }
        .auto-style13 {
            margin-left: 40px;
            height: 40px;
        }
        .auto-style14 {
            text-align: right;
            height: 39px;
            width: 703px;
            margin-left: 300px;
        }
        .auto-style15 {
            margin-left: 40px;
            height: 39px;
        }
        .auto-style16 {
            text-align: right;
            height: 122px;
            width: 703px;
            margin-left: 300px;
        }
        .auto-style17 {
            margin-left: 40px;
            height: 40px;
        }
        .auto-style18 {
            width: 100%;
            height: 40px;
        }
        .auto-style19 {
            text-align: right;
            height: 43px;
            width: 703px;
            margin-left: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text='<%# Eval("yorum_adi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorum_icerik") %>'></asp:Label>
                        <strong>&nbsp;- </strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("yorum_tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div>
    </div>
    <div class="auto-style7">
        YORUM YAPMA PANELİ</div>
    <table class="auto-style18">
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style12">Ad Soyad :</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Mail :</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Yorumunuz :</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server" Height="108px" TextMode="MultiLine" Width="252px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="GÖNDER" Width="254px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
