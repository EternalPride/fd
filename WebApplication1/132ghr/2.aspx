<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2.aspx.cs" Inherits="_132ghr._2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span style="font-size:10.5pt;mso-bidi-font-size:11.0pt;
font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">管理图书分类信息<br />
            <br />
            <asp:Button ID="btn" runat="server" Text="查询" OnClick="btn_Click" />
            </span>
        </div>
        <asp:GridView ID="j" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="图书ID" />
                <asp:BoundField DataField="BookType" HeaderText="图书分类" />
                <asp:HyperLinkField DataNavigateUrlFields="BookID" DataNavigateUrlFormatString="h.aspx?id={0}" HeaderText="编辑" Text="编辑" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
