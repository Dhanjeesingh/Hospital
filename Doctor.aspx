﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor</title>
    <style type="text/css">
       .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
        }
        .auto-style2 {
            width: 322px;
        }
                  body {
          background-image: linear-gradient(rgb(110, 198, 201), rgb(220, 226, 193), rgba(203, 142, 241, 0.91));
              background-color: rgba(300, 80, 0, 0.3);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form {
            opacity: 0.95;
            border-radius: 10px;
            width: 450px;
            background-image: linear-gradient(to right, #4dd0e1, #a7ffeb);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.5);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #fff;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            padding: 10px;
            margin: 0 0 20px 0;
            border-radius: 25px;
            background-image: linear-gradient(to right, #00796b, #26a69a);
            width: 100%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th {
            color: #004d40;
            font-weight: bold;
            padding: 10px;
            font-size: 1.2rem;
            text-align: left;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0 10px 0;
            border: 2px solid #00796b;
            border-radius: 5px;
            font-size: 1rem;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"] {
            background-image: linear-gradient(to right, #00796b, #26a69a);
            border: none;
            color: #fff;
            padding: 10px;
            margin: 10px 2px;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
            width: 100px;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-image: linear-gradient(to right, #004d40, #00796b);
        }
   input[type="reset"]:hover,
        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        
        .auto-style3 {
            width: 322px;
            font-weight: bold;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Doctor ID"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="auto-style3">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="E Mail"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Specialization"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="Hospital ID"></asp:Label>
                    </strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style3">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="All search" />
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="P Seacrh" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Delete" />
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Menu" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style3">
            <Columns>
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" SortExpression="doctor_id" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="specialization" HeaderText="specialization" SortExpression="specialization" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="hospital_id" HeaderText="hospital_id" SortExpression="hospital_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [doctor]"></asp:SqlDataSource>
    </form>
</body>
</html>