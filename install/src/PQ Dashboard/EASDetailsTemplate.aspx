<%@ page language="C#" autoeventwireup="true" inherits="EASDetails, App_Web_i30b5ybd" %>
<%@ Import Namespace="System.Activities.Statements" %>
<%@ Import Namespace="FaultData.DataAnalysis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%;">
<head id="Head1" runat="server">
    <title><%= ServiceName.InnerHtml %></title>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="./css/FaultSpecifics.css" type="text/css" />
	
	</head>
	
	<body style="height: 100%;">
	<table border="1px" width="100%" height="100%" cellpadding="0" cellspacing="0">
        <tr><td nowrap colspan="2" align="center"><%= ServiceName.InnerHtml %></td></tr>
        
        
        <% foreach (Tuple<string, string> entry in thedata) { %>
       
	    <tr><td nowrap align="right"><%= entry.Item1 %>:</td><td nowrap><%= entry.Item2 %></td></tr>
        
        <% } %>
    </table>
        
        <form runat="server">
            <div runat="server" id="ServiceName" >EAS Details</div>
            <div runat="server" id="TableName">SandBoxResult</div>
        </form>
	</body>
</html>