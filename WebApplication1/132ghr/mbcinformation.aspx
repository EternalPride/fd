<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mbcinformation.aspx.cs" Inherits="_132ghr.mbcinformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Btnselect" runat="server" OnClick="Btnselect_Click" Text="查询" />
        &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="gvbook" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="图书ID" />
                <asp:BoundField DataField="BookStyle" HeaderText="图书类型" />
                <asp:BoundField DataField="BookName" HeaderText="图书名称" />
                <asp:BoundField DataField="BookPress" HeaderText="出版社" />
                <asp:BoundField DataField="BookISBN" HeaderText="图书ISBD号" />
                <asp:BoundField DataField="BookDate" HeaderText="出版日期" />
                <asp:HyperLinkField DataNavigateUrlFields="BookID" DataNavigateUrlFormatString="tszy.aspx?id={0}" HeaderText="编辑" Text="编辑" />
                <asp:TemplateField HeaderText="删除">
                    <ItemTemplate>
                        <asp:CheckBox ID="ckdelet" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="Lkback" runat="server" OnClick="Lkback_Click">返回</asp:LinkButton>
    </form>
</body>
</html>
