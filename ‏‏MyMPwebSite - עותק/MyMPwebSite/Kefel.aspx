<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Kefel.aspx.cs" Inherits="MyMPwebSite.Kefel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        h1{color: red;}
        table{margin: 0px auto; border: 1px solid red; text-align: center;}
        td{border: 1px solid red; padding: 10px;}
        input{text-align:center;}

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>לוח כפל</h1>

    <div style="text-align: center; direction: ltr">
        row num: <input type="text" id="row" name="row" value="5" class="input"/> &nbsp
        col num: <input type="text" id="col" name="col" value="5" class="input"/> <br /><br />
        <input type ="button" value="~שליחה~" onclick="multiplicationBoard();   "/>
        <br /><br />
    </div>
    <div id="table-container"></div>
     <script>
         function multiplicationBoard() {
             var row = document.getElementById("row").value;
             var col = document.getElementById("col").value;

             var table = "<table style='margin: 0px auto; border: 1px solid red; text-align: center;'>";
             for (var i = 1; i <= row; i++) {
                 table += ("<tr>");
                 for (j = col; j >= 1; j--) {
                     var value = i * j;
                     table += ("<td style='border: 1px solid red; text-align: center; padding: 8px;'>" + value + "</td>");
                 }
                 table += ("</tr>");

             }
             table += ("</table>");
         document.getElementById("table-container").innerHTML = table;
         }
         
 </script>    
    
    


   

</asp:Content>