<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstu.aspx.cs" Inherits="_132ghr.addstu" %>

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
            width: 129px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
&nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加学生信息</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID&nbsp;&nbsp;
                <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; 学 号&nbsp; 
                <asp:TextBox ID="Txtxh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; 姓 名&nbsp; 
                <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; 专 业&nbsp; 
                <asp:DropDownList ID="ddlzy" runat="server">
                    <asp:ListItem>———请选择———</asp:ListItem>
                    <asp:ListItem>土木工程系</asp:ListItem>
                    <asp:ListItem>信息工程系</asp:ListItem>
                    <asp:ListItem>电气系</asp:ListItem>
                    <asp:ListItem>会计系</asp:ListItem>
                    <asp:ListItem>经管系</asp:ListItem>

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; 班 级&nbsp; 
                <asp:DropDownList ID="ddlclass" runat="server">
                    <asp:ListItem>请选择</asp:ListItem>
                    <asp:ListItem>软件1701班</asp:ListItem>
                    <asp:ListItem>软件1702班</asp:ListItem>
                    <asp:ListItem>软件1703班</asp:ListItem>
                    <asp:ListItem>电子技术_本</asp:ListItem>
                    <asp:ListItem>汽修_ 本</asp:ListItem>
                    <asp:ListItem>电商1701</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; 性 别&nbsp; </td>
            <td>
                <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; 年 龄&nbsp; 
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="确定" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lkback" runat="server" OnClick="lkback_Click">返回</asp:LinkButton>
    </form>
</body>
</html>
