<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meneu</title>
    <style>
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
    <div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Patient" Value="Patient">
                    <asp:MenuItem NavigateUrl="~/Patient.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Doctor" Value="Doctor">
                    <asp:MenuItem NavigateUrl="~/Doctor.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Doctor Schedule" Value="Doctor Schedule">
                    <asp:MenuItem NavigateUrl="~/Doctor Schedule.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Hospital" Value="Hospital">
                    <asp:MenuItem NavigateUrl="~/Hospital.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Staff" Value="Staff">
                    <asp:MenuItem NavigateUrl="~/Staff.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Services" Value="Services">
                    <asp:MenuItem NavigateUrl="~/Service.aspx" Text="open" Value="open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Appointment" Value="Appointment">
                    <asp:MenuItem NavigateUrl="~/Appointment.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Medicine" Value="Medicine">
                    <asp:MenuItem NavigateUrl="~/medicine.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Treatment" Value="Treatment">
                    <asp:MenuItem NavigateUrl="~/treatment.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Treatment Details" Value="Treatment Details">
                    <asp:MenuItem NavigateUrl="~/treatment_details.aspx" Text="Open" Value="Open"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
