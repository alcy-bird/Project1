<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Project1.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            color: #FFFFFF;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        <strong>BİZ KİMİZ
    </strong>
    </p>
    <p class="auto-style5">
        &nbsp;</p>
    <div class="auto-style5">
        <asp:DataList ID="DataList2" runat="server" Height="96px" Width="446px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <br />

    <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/Img/About-Us.png" Width="447px" />
</asp:Content>
