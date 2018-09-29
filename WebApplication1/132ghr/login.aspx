<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="_132ghr.login" %>

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
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登录页面&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; 账号&nbsp; &nbsp;
                    <asp:TextBox ID="TxtID" runat="server" OnTextChanged="TxtID_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfID" runat="server" ControlToValidate="TxtID" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300">账号未输入！！！</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; 密码&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Texpwd" runat="server" ForeColor="#CC3300"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfPwd" runat="server" ControlToValidate="Texpwd" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300">密码未输入！！！</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;
                    <asp:Button ID="Btnregister" runat="server" Text="注册" OnClick="Btnregister_Click" CausesValidation="false" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btnlogin" runat="server" Text="登录" OnClick="Btnlogin_Click"  />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
