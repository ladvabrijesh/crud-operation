<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crud_operation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 288px;
        }
        .auto-style2 {
            width: 176px;
        }
        .auto-style3 {
            width: 478px;
        }
        .auto-style5 {
            width: 288px;
            height: 26px;
        }
        .auto-style6 {
            width: 176px;
            height: 26px;
        }
        .auto-style7 {
            width: 478px;
            height: 26px;
        }
        .auto-style8 {
            width: 288px;
            height: 28px;
        }
        .auto-style9 {
            width: 176px;
            height: 28px;
        }
        .auto-style10 {
            width: 478px;
            height: 28px;
        }
        .auto-style11 {
            width: 288px;
            position: inherit;
            height: 32px;
        }
        .auto-style12 {
            width: 176px;
            position: inherit;
            height: 32px;
        }
        .auto-style13 {
            width: 478px;
            position: inherit;
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style= "font-size : xx-large; font-family: Calibri; font-weight: bold; font-style: inherit; color: #003399; text-decoration: underline;" align="center">Student Info Manage Form<br />
            </div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="position: inherit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style2" style="position: inherit">Student Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style3" style="position: inherit">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="Get" BackColor="#993399" ForeColor="White" Width="75px" OnClick="Button5_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="position: inherit">&nbsp;</td>
                    <td class="auto-style2" style="position: inherit">Student Name&nbsp;&nbsp;</td>
                    <td class="auto-style3" style="position: inherit">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="position: inherit">&nbsp;</td>
                    <td class="auto-style2" style="position: inherit">Gender&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style3" style="position: inherit">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="184px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="position: inherit">&nbsp;</td>
                    <td class="auto-style2" style="position: inherit">Hobby&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style3" style="position: inherit">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" Width="345px">
                            <asp:ListItem>Singing</asp:ListItem>
                            <asp:ListItem>Dancing</asp:ListItem>
                            <asp:ListItem>Drawing</asp:ListItem>
                            <asp:ListItem>Gaming</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="position: inherit"></td>
                    <td class="auto-style9" style="position: inherit">Date Of Birth&nbsp;&nbsp;</td>
                    <td class="auto-style10" style="position: inherit">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="position: inherit">&nbsp;</td>
                    <td class="auto-style6" style="position: inherit">&nbsp;</td>
                    <td class="auto-style7" style="position: inherit">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="position: inherit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click1" BackColor="#993399" ForeColor="White" Width="75px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#993399" ForeColor="White" Width="75px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#993399" ForeColor="White" Width="75px" OnClick="Button3_Click1" OnClientClick="return confirm('Are you sure to delete?');" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="Search" BackColor="#993399" ForeColor="White" Width="75px" OnClick="Button4_Click" />
                    &nbsp;&nbsp;
                    </td>
                </tr>
            </table>

        </div>
        <p style="font-size: xx-large; text-decoration: underline; font-weight: bold; color: #003399; font-family: Calibri; position: inherit" align="center">
            Student List</p>
        <p style="font-size: xx-large; font-weight: bold; color: #003399; font-family: Calibri; position: inherit" align="center">
            <asp:Button ID="Button6" runat="server" BackColor="#993399" ForeColor="White" Height="26px" OnClick="Button6_Click" Text="Ascending" Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" BackColor="#993399" ForeColor="White" Height="26px" OnClick="Button7_Click" Text="Descending" Width="99px" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" Width="936px" HorizontalAlign="Center" Font-Size="Medium">
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <EmptyDataRowStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#993399" ForeColor="White" />
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
        </p>
    </form>
    </body>
</html>
