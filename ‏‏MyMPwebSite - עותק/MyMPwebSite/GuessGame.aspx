<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GuessGame.aspx.cs" Inherits="MyMPwebSite.GuessGame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1{text-align: center;}
        input{text-align: center;}
        h2{text-align:center; color: magenta;font-size: 31px;}
        .inputBox{
            border: 2px solid black;
            margin: 3px 6px;
            padding: 10px 40px;
            background-color:lightpink;
        }
        .checkButton{
            background-color: lavender;
            border: 2px solid black;
            color:darkred;
            padding: 10px 20px;
            font-size: 13px;
            text-align:center;
            margin: 4px 2px;

        }
        .restartButton{
            background-color:lavender;
            border: 2px solid black;
            color:darkred;
            padding: 10px 20px;
            font-size: 13px;
            text-align:center;
            margin: 4px 2px;
            
        }
    </style>
    <!--when guessing the restart button is disabled
        when guessing is over restart button is enabled
        after u tried to guess 5 times: you can't write in the input box ("guess")--->
    <script>
        var num = parseInt(Math.random() * 100) + 1;
        var msg;
        var i = 1;
        function checkGuess()
        {
            
            if (i <= 5) {
     
                var guess = parseInt(document.getElementById("guess").value);
                document.getElementById("restartButton").disabled = true;
                if (guess == num) {
                    msg = "הצלחת! כל הכבוד!";
                    document.getElementById("guess").disabled = true;
                }
                else if (guess > num)
                    msg = "!הניחוש שלך גדול מדי";
                else
                    msg = "!הניחוש שלך קטן מדי";

                document.getElementById("msg").innerHTML = msg;
                i++;
            }
            else
            {
                msg = "נגמרו לך מספר הניחושים! תרצה להגריל מספר חדש?";
                document.getElementById("msg").innerHTML = msg;
                document.getElementById("restartButton").disabled = false;
                document.getElementById("checkButton").disabled = true;
                document.getElementById("guess").disabled = true;

            }
        }
        function newRandomNumber() {
            num = parseInt(Math.random() * 100) + 1;
            msg = " ";
            document.getElementById("msg").innerHTML = msg;
            i = 1;
            document.getElementById("checkButton").disabled = false;
            document.getElementById("guess").disabled = false;
        }
       ז
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>משחק ניחוש מספרים</h1>
    <h2>נחש מספר</h2>
    <div style ="text-align: center; direction: ltr;"> 
    <p>number:</p> <input type = "text" class="inputBox" id ="guess" /> 
    <br />
    <input type ="button" value ="~~ בדיקה ~~" id="checkButton" class="checkButton" onclick ="checkGuess();" />
    <h2 id="msg"></h2>

    <input type="button" value ="~~הגרל מספר חדש~~" id="restartButton" class="restartButton" onclick="newRandomNumber();" />

    



    <br /><br />
    </div>
</asp:Content>
