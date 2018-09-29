<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lkchangepwd.aspx.cs" Inherits="_132ghr.Lkchangepwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>修改用户密码</td>
            </tr>
            <tr>
                <td>原密码<asp:TextBox ID="txtold" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>新密码<asp:TextBox ID="Txtpwd1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>新密码<asp:TextBox ID="txtpwd2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="change" runat="server" Text="修改" OnClick="change_Click" Height="21px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="Lkback" runat="server" PostBackUrl="LKchangepwd.aspx" OnClick="Lkback_Click">返回</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
