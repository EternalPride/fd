<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="_132ghr._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            添加图书分类<br />
            <br />
            ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            图书分类&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="Txtbook" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Btnadd" runat="server" OnClick="Btnadd_Click" Text="添加" />
        </div>
        <asp:LinkButton ID="Lkback" runat="server" OnClick="Lkback_Click">返回</asp:LinkButton>
    </form>
</body>
</html>
