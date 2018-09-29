<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lkmsinformation.aspx.cs" Inherits="_132ghr.Lkmsinformation" %>

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
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><span style="font-size:10.5pt;mso-bidi-font-size:11.0pt;
font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 管理学生信息功能</span></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="ddlclass" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Btnselect" runat="server" OnClick="Btnselect_Click" Text="查询" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="Gvselect" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="848px">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="学号" />
                                <asp:BoundField DataField="StudentName" HeaderText="姓名" />
                                <asp:BoundField DataField="StudentProgrm" HeaderText="专业" />
                                <asp:BoundField DataField="StudentClass" HeaderText="班级" />
                                <asp:BoundField DataField="StudentGender" HeaderText="性别" />
                                <asp:BoundField DataField="StudentAge" HeaderText="年龄" />
                                <asp:HyperLinkField DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="lksi.aspx?id={0}" HeaderText="编辑" Text="编辑" />
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:RadioButton ID="RadioButton1" runat="server" />
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="Lkback" runat="server" OnClick="Lkback_Click">返回</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
