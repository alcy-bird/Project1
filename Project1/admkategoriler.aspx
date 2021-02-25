<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admkategoriler.aspx.cs" Inherits="Project1.admkategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style13 {
        background-color: #CCCCFF;
            font-size: large;
        }
    .auto-style14 {
        text-align: right;
    }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            font-weight: bold;
        }
        .auto-style17 {
            width: 41px;
        }
        .auto-style18 {
            width: 313px;
        }
        .auto-style19 {
            margin-left: 40px;
        }
        .auto-style20 {
            width: 48px;
            text-align: center;
            background-color: #CCCCFF;
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
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                        </strong></td>
                    <td><strong>KATEGORİ LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Height="188px" Width="448px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%#Eval("kategori_adi") %>'></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <a href="admkategoriler.aspx?kategori_id=<%#Eval("kategori_id")%>&islem=sil" style =" text-decoration:none;">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete1.png" Width="30px" />
                        </a>
                    </td>
                    <td class="auto-style14">
                        <a href="adminkategoridetay.aspx?kategori_id=<%#Eval("kategori_id")%>" style="text-decoration:none;">  
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update1.png" Width="30px" />
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
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style22"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">KATEGORİ AD </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">KATEGORİ İKON </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style16" Height="33px" OnClick="btnekle_Click" Text="EKLE" Width="178px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
