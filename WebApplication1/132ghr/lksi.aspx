<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lksi.aspx.cs" Inherits="_132ghr.lksi" %>

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
            width: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">更改学生信息</td>
            </tr>
            <tr>
                <td colspan="2">学号：<asp:Label ID="lbstudent" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">姓名：<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">专业：<asp:DropDownList ID="ddlzy" runat="server">
                    <asp:ListItem>请选择</asp:ListItem>
                    
                        <asp:ListItem>土木工程系</asp:ListItem>
                    <asp:ListItem>信息工程系</asp:ListItem>
                    <asp:ListItem>电气系</asp:ListItem>
                    <asp:ListItem>会计系</asp:ListItem>
                    <asp:ListItem>经管系</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">班级：<asp:DropDownList ID="ddlclass" runat="server">
                    <asp:ListItem>——请选择——</asp:ListItem>
                      <asp:ListItem>软件1701班</asp:ListItem>
                    <asp:ListItem>软件1702班</asp:ListItem>
                    <asp:ListItem>软件1703班</asp:ListItem>
                    <asp:ListItem>电子技术_本</asp:ListItem>
                    <asp:ListItem>汽修_ 本</asp:ListItem>
                    <asp:ListItem>电商1701</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">性别：</td>
                <td>
                    <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td colspan="2">年龄：<asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="Lkback" runat="server" OnClick="Lkback_Click">返回</asp:LinkButton>
    </form>
</body>
</html>
