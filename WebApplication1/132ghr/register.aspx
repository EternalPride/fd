
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="_132ghr.register" %>

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
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注册页面&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp; 注册账号&nbsp; <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfID" runat="server" ControlToValidate="TxtID" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300">账号不能为空</asp:RequiredFieldValidator>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp; 用户名称&nbsp; <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp; 用户密码&nbsp; <asp:TextBox ID="Txtpwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp; 用户角色&nbsp; <asp:DropDownList ID="ddlrl" runat="server">
                        <asp:ListItem>——请选择——</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>其他</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Btnlogin" runat="server" Text="登录" OnClick="Btnlogin_Click" CausesValidation="false"/>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Btnregister" runat="server" OnClick="Btnregister_Click" Text="注册" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
