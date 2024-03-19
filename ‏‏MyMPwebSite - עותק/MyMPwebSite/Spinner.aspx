<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Spinner.aspx.cs" Inherits="MyMPwebSite.Spinner1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
    var spin0 = "Pic/Spinner/spinNG.PNG";
    var spin1 = "Pic/Spinner/spinGH.PNG"; 
    var spin2 = "Pic/Spinner/spinHP.png" 
    var spin3 = "Pic/Spinner/spinPN.PNG"; 

    setInterval("start()", 100);

    //--- פונקציה המקבלת כפרמטר משתנה המכיל את שם התמונה //---
    //--- ומציג את התמונה באובייקט pic //---
    function show(str)
    {
        pic.src = str;
    }
    var i = 1;
   // --- פונקציה הקובעת איזו מ4 - התמונות תוצג, //---
        //--- בהתאם לשארית החלוקה של i ב - 4 //---
    function start() {
        j = i % 4;
        switch (j) {
            case 0: show(spin0); break;
            case 1: show(spin1); break;
            case 2: show(spin2); break;
            case 3: show(spin3); break;
        }
        i++;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
<center>
    <img src="Pic/Spinner/spinNG.PNG" id="pic" alt="spinner" />
</center>
</asp:Content>
