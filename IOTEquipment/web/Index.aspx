<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="web.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{background-color:#646464;}
        .my_content{width:700px;margin:100px auto;color:White}
        #buttonLogin{display: inline-block;outline: none;cursor: pointer;text-align: center;
	                 text-decoration: none;font: 14px/100% Arial, Helvetica, sans-serif;padding: .5em 2em .5em;
	                 text-shadow: 0 1px 1px rgba(0,0,0,.3);-webkit-border-radius: .5em; -moz-border-radius: .5em;
	                 border-radius: 0em;-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	                 box-shadow: 0 1px 2px rgba(0,0,0,.2);margin-left:20px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class = "my_content">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="EquipID" Visible="False" />
                <asp:BoundField DataField="EquipName" HeaderText="设备名称" />
                <asp:BoundField DataField="SumNum" HeaderText="总数量" />
                <asp:BoundField DataField="InDate" HeaderText="到库日期" />
                <asp:BoundField DataField="Num" HeaderText="剩余数量" />
                <asp:BoundField DataField="BorrowNum" HeaderText="借入数量" />
                <asp:BoundField DataField="BorrowDate" HeaderText="借入日期" />
            </Columns>
    </asp:GridView>
    </div>
    </form>
</body>
</html>
