<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MathProblems.aspx.cs" Inherits="MyMPwebSite.MathProblems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1{font-size: 32pt; text-align: center; color: forestgreen;}
        h2{text-align: center;}
        .calc{direction: ltr;}

    </style>
    <script>
        function calculate() {
            var num1 = parseInt(document.getElementById("num1").value);
            var num2 = parseInt(document.getElementById("num2").value);


            var sum = num1 + num2;
            var sub = num1 - num2;
            var mul = num1 * num2;
            var div = num1 / num2;
            var mod = num1 % num2;

            document.getElementById("sum").value = sum;
            document.getElementById("sub").value = sub;
            document.getElementById("mul").value = mul;
            document.getElementById("div1").value = Math.round(div);
            document.getElementById("div2").value = parseInt(div);
            document.getElementById("div").value = div;
            document.getElementById("mod").value = mod;


            //document.write("<h2 class = 'calc'>");
            //document.write(num1 + "+" + num2 + "=" + sum + "<br />");
            //document.write(num1 + "*" + num2 + "=" + multiply + "<br />");
            //document.write(num1 + "/" + num2 + "=" + dose + "<br />");
            //document.write(num1 + "-" + num2 + "=" + difference + "<br />");
            //document.write(num1 + "%" + num2 + "=" + rest + "<br />");
            //document.write("</h2>")
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>תרגילי חשבון</h1>
    <h1>תיבת טקסט</h1>
    <div style ="text-align: center; direction: ltr;"> 
        num 1: <input type = "text" id = "num1" /> 
        num 2: <input type ="text" id ="num2" /> 
        <br />
        <input type ="button" value ="~~ שלח ~~" onclick ="calculate();" />

        <br /><br />

        <h2>sum: <input type ="text" id ="sum" disabled /></h2>
        <h2>sub: <input type="text" id="sub" disabled /> <br /></h2>
        <h2>mul: <input type="text" id="mul" disabled /> <br /></h2>
        <h2>div: <input type="text" id="div" disabled />&nbsp&nbsp&nbsp&nbsp</h2>
        <h2>parseInt(div) : <input type="text" id="div2" disabled />&nbsp&nbsp&nbsp&nbsp</h2>
        <h2>Math.round(div) <input type="text" id="div1" disabled /><br /></h2>
        <h2>mod: <input type="text" id="mod" disabled /><br /></h2>

    </div>

</asp:Content>
