<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="_132ghr.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="laID" runat="server"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="Lkchangepwd" runat="server" OnClick="Lkchangepwd_Click" PostBackUrl="LKchangepwd.aspx?id={0}"> 修改用户密码</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LkAsinformation" runat="server" OnClick="LkAsinformation_Click">添加学生信息</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="Lkmsinformation" runat="server" OnClick="Lkmsinformation_Click">管理学生信息</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LkAbcinformation" runat="server" OnClick="LkAbcinformation_Click">添加图书分类信息</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="Lkmbcinformation" runat="server" OnClick="Lkmbcinformation_Click">管理图书分类信息</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LkAbinformation" runat="server" OnClick="LkAbinformation_Click">添加图书信息</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="Lkmbinformation" runat="server" OnClick="Lkmbinformation_Click">管理图书信息</asp:LinkButton>
        </div>
    </form>
</body>
</html>
