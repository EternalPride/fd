<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbookclassification.aspx.cs" Inherits="_132ghr.addbookclassification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td><span style="font-size:16.0pt;font-family:宋体;
mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
color:red;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:
AR-SA">添加图书分类信息</span></td>
                </tr>
                <tr>
                    <td>图书ID<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">图书类型<asp:DropDownList ID="ddltype" runat="server">
                        <asp:ListItem>冒险类</asp:ListItem>
                        <asp:ListItem>文学类</asp:ListItem>
                        <asp:ListItem>四大名著</asp:ListItem>
                        <asp:ListItem>探险类</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>图书名称<asp:TextBox ID="txtbookname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>出版社<asp:TextBox ID="Txtcbs" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>出版日期<asp:TextBox ID="Txtdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>ISBD号<asp:TextBox ID="Txtiss" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:LinkButton ID="Lkback" runat="server" OnClick="Lkback_Click">返回</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btn" runat="server" OnClick="Btn_Click" Text="添加" />
    </form>
</body>
</html>
