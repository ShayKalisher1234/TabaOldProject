<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChoosingColor.aspx.cs" Inherits="MyMPwebSite.ChoosingColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table { border: 1px solid black; margin: 0px auto; }
        td { border: 1px solid; }
    </style>
    <script>
        function checkColor() {
            var color = document.getElementsByName("answer");
            var ansChecked = false;
            for (var i = 0; i < color.length; i++) {
                if (color[i].checked == true)
                    ansChecked = true;
            }

            if (ansChecked == false) {
                document.getElementById("mAnswer").value = "לא נבחר צבע";
                document.getElementById("mAnswer").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mAnswer").style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form method="post" runat="server" onsubmit= "return checkColor();">
    <table>
        <tr>
            <td>שמך:</td>
            <td><input type="text" id="Name" name="Name" class="input" /></td>
            <td>
                <input type="text" id="mName" size="25"
                       style="display: none; font-weight: bold; background-color: antiquewhite;"
                       disabled="disabled" />
            </td>
        </tr>
        <tr>
           
            <td>המגדר שלך:</td>
            <td>
                gender:
                <input type="radio" name="gender" value="male" checked /> Male
                <input type="radio" name="gender" value="female" /> Female
                <br />
            </td>
            <td></td>
        </tr>
        <tr>
            <td><h3>מה הצבע המועדף עליך?</h3></td>
            <td>
                <input type="radio" name="answer" value="אדום" /> 1. אדום <br />
                <input type="radio" name="answer" value="כחול" /> 2. כחול<br />
                <input type="radio" name="answer" value="ירוק" /> 3. ירוק<br />
                <input type="radio" name="answer" value="צהוב" /> 4. צהוב<br />
                <input type="radio" name="answer" value="לבן" /> 5. לבן<br />
                <input type="radio" name="answer" value="שחור" /> 6. שחור<br />
            </td>
            <td>
                <input type="text" id="mColor" size="25"
                       style="display: none; font-weight: bold; background-color: antiquewhite;"
                       disabled="disabled" />
            </td>
        </tr>

        <tr>
            <td colspan="3" style="text-align: center;">
                <input type="submit" name="submit" value="send" />
            </td>
        </tr>
    </table>
        <br />
        <br />
    
    </form>
    <%=st %>
</asp:Content>
