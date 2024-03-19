<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyForm.aspx.cs" Inherits="MyMPwebSite.MyForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        input{font-size: 15pt;}
        td{font-size: 15pt;}
    </style>
    <script>

        function chkForm() {
            //שם משתמש קצר מדי או לא קיים   
            var uName = document.getElementById("uName").value;
            var fName = document.getElementById("fName").value;
            var lName = document.getElementById("lName").value;

            var email = document.getElementById("email").value;
            var size = email.length;
            var atSign = email.indexOf('@');
            var dotSign = email.indexOf('.', atSign);

            alert("email = " + email);
            alert("size = " + size);
            alert("atSign = " + atSign);
            alert("dotSign = " + dotSign);

            var msg = "";
            if (size < 6)
                msg = "כתובת דואל קצרה מדי";
            else if (size > 30)
                msg = "כתובת דואל ארוכה מדי";
            //---בדיקה שיש בדיוק @ אחד בכתובת הדוא"ל"---
            else if (atSign == -1)
                msg = "סימן @ לא קיים בכתובת";
            else if (atSign != email.lastIndexOf('@'))
                msg = "אסור יותר מ-@ אחד בכתובת דואל";

            else if (atSign < 2)
                msg = "שם המשתמש בכתובת הדואל חייב להיות 2 תווים לפחות";
            else if (email.lastIndexOf('@') == size - 1)
                msg = "סימן ה@ לא יכול להיות אחרון בכתובת"
            //בדיקה שה@ לא במקום הראשון או אחרון

            //נקודה לא בתו ראשון או אחרון
            else if (email.indexOf('.') == 0 || email.lastIndexOf('.') == size - 1)
                msg = "נקודה לא יכולה להיות תו ראשון או אחרון בכתובת";

            //נקודה לפחות שני תווים אחרי ה @
            else if (dotSign - atSign < 2)
                msg = "נקודה חייבת להיות לפחות 2 תווים אחרי סימן ה-@";

            //check if there is ' or ":
            else if (!isQuot(email))
                msg = "כתובת דואל לא יכולה להכיל גרש או גרשיים";

            //check if there is hebrew in the input:
            else if (isHebrew(email))
                msg = "כתובת דוא'ל לא יכולה להכיל עברית";
            //check if there is $%^&*()-! []{}<>?:
            else if (isValidString(email))
                msg = "כתובת דואל לא יכולה להכיל תווים אסורים";

            

            if (msg != "") {
                document.getElementById("mEName").value = msg;
                document.getElementById("mEName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mEName").style.display = "none";


            if (uName.length < 2) {
                document.getElementById("mUName").value = "שם משתמש קצר מדי או לא קיים";
                document.getElementById("mUName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            if (fName.length < 2) {
                document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים";
                document.getElementById("mFName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            if (lName.length < 2) {
                document.getElementById("mLName").value = "שם משפחתי קצר מדי או לא קיים";
                document.getElementById("mLName").style.display = "inline";
                return false;

            }
            else
                document.getElementById("mLName").style.display = "none";

            var answer = document.getElementsByName("gender");
            if (!answer[0].checked && !answer[1].checked) {
                document.getElementById("mGender").value = "חובה לסמן מגדר";
                document.getElementById("mGender").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mGender").style.display = "none";

            var city = document.getElementById("city").value;
            if (city == "other") {
                document.getElementById("mCity").value = "חובה לבחור עיר מגורים";
                document.getElementById("mCity").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mCity").style.display = "none";

            //check born year
            var yearBorn = document.getElementById("yearBorn").value;
            var d = new Date();
            var year = d.getFullYear();
            var msgYear = "";

            if (isNaN(yearBorn)) //isNaN = is not a number
                msgYear = "שנת לידה חייבת להכיל ספרות בלבד";
            else if (yearBorn < 1900)
                msgYear = "שנת לידה חייבת להיות מספר 4 ספרתי גדול מ1900";
            else if (yearBorn > year - 5)
                msgYear = "צעיר מדי מכדי להירשם לאתר";

            //giving values to msgYear
            if (msgYear != "") {
                document.getElementById("mYearBorn").value = msgYear;
                document.getElementById("mYearBorn").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mYearBorn").style.display = "none";

            //password check:
            var password = document.getElementById("pw").value;
            var passwordLength = password.length;
            passwordMSG = "";
            if (passwordLength < 6)
                passwordMSG = "סיסמה קצרה מדי";
            else if (passwordLength > 30)
                passwordMSG = "סיסמה ארוכה מדי";

            else if (isUpperCasePassword(password))
                passwordMSG = "סיסמה חייבת להכיל אות אחת גדולה לפחות";
            else if (isLowerCasePassword(password))
                passwordMSG = "סיסמה חייבת להכיל אות קטנה אחת לפחות";
            else if (isdigit(password))
                passwordMSG = "סיסמה חייבת להכיל ספרה אחת לפחות";
            else if (isValidPassword(password))
                passwordMSG = "סיסמה לא יכולה להכיל תווים אסורים";
            else if (isHebrewPassword(password))
                passwordMSG = "סיסמה לא יכולה להכיל עברית";
            else if (!isQuotPassword(password))
                passwordMSG = "סיסמה לא יכולה להכיל גרש או גרשיים";

                //password config
            var passwordConfig = document.getElementById("pwConfig").value;
            if (password != passwordConfig) {
                document.getElementById("mPasswordConfig").value = "סיסמאות צריכות להיות זהות";
                document.getElementById("mPasswordConfig").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPasswordConfig").style.display = "none";
            
            
                
            if (passwordMSG != "") {
                document.getElementById("mPassword").value = passwordMSG;
                document.getElementById("mPassword").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPassword").style.display = "none";

             }

        function isQuot(email) {
            var quot = '\"';
            var qout1 = "\'";
            if (email.indexOf(quot) != -1 || email.indexOf(qout1) != -1)
                return false;
            return true;
        }

        function isHebrew(email)
        {
            var len = email.length;
            var i = 0, ch;
            while (i < len)
            {
                ch = email.charAt(i);
                if (ch >= 'א' && ch <= 'ת')
                    return true;
                i++;
            }
            return false;
        }

        function isValidString(email) {
            var badChr = "$%^&*()-! []{}<>?";
            var len = email.length;

            var i = 0, pos, ch;
            while (i < len) {
                ch = email.charAt(i);
                pos = badChr.indexOf(ch);
                if (pos != -1)
                    return true;
                i++;
            }
            if (i > len)
                return false;
        }

        //password:
        function isUpperCasePassword(password)
        {
            var len = password.length;
            var i = 0;
            var ch;
            var upperCaseCounter = 0;
            while (i < len)
            {
                ch = password.charAt(i);
                if (ch >= 'A' && ch <= 'Z')
                    upperCaseCounter++;
                i++;
            }
            if (upperCaseCounter > 0)
                return false;
            else
                return true;
               
        }
        function isLowerCasePassword(password)
        {
            var len = password.length;
            var i = 0;
            var ch;
            var lowerCaseCounter = 0;
            while (i < len)
            {
                ch = password.charAt(i);
                if (ch >= 'a' && ch <= 'z')
                    lowerCaseCounter++;
                i++
            }
            if (lowerCaseCounter > 0)
                return false;
            else
                return true;
        }
        function isdigit(password) {
            var len = password.length;
            var i = 0;
            var ch;
            var isDigitCounter = 0;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= 1 && ch <= 9)
                    isDigitCounter++;
                i++
            }
            if (isDigitCounter > 0)
                return false;
            else
                return true;
        }
        function isValidPassword(password) {
            var badChr = "$%^&*()-! []{}<>?";
            var len = password.length;

            var i = 0;
            var pos;
            var ch;
            while (i < len) {
                ch = password.charAt(i);
                pos = badChr.indexOf(ch);
                if (pos != -1)
                    return true;
                i++;
            }
            if (i > len)
                return false;
        }
        function isHebrewPassword(password) {
            var len = password.length;
            var i = 0, ch;
            while (i < len) {
                ch = password.charAt(i);
                if (ch >= 'א' && ch <= 'ת')
                    return true;
                i++;
            }
            return false;
        }

        function isQuotPassword(password) {
            var quot = '\"';
            var qout1 = "\'";
            if (password.indexOf(quot) != -1 || password.indexOf(qout1) != -1)
                return false;
            return true;
        }



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>טופס רישום</h1>
<form method="post" runat="server" onsubmit="return chkForm();">
    <table>
        <tr>
            <td>שם משתמש</td>
            <td>
                <input type="text" id="uName" name="uName" class ="input" />

            </td>
            <td>
                <input type="text" id="mUName" size="30"
                    style="display:none; background-color: silver; font-weight:bold;"
                    disabled ="disabled" />
            </td>
        </tr>
        <tr>
            <td>שם פרטי</td>
            <td><input type="text" id="fName" name="fName" class ="input" /></td>
            <td>
                <input type="text" id="mFName" size="30"
                    style="display:none; background-color: silver; font-weight:bold;"
                    disabled ="disabled" />
            </td>

        </tr>
        <tr>
            <td>שם משפחתי</td>
            <td><input type="text" id="lName" name="lName" class ="input" /></td>
            <td>
            <input type="text" id="mLName" size="30"
                style="display:none; background-color: silver; font-weight:bold;"
                disabled ="disabled" />
            </td>
        </tr>
        <tr>
            <td>כתובת דוא"ל</td>
            <td><input type="text" id="email" name="email" class ="input" /></td>
            <td>
            <input type="text" id="mEName" size="30"
                style="display:none; background-color: silver; font-weight:bold;"
                disabled ="disabled" />
            </td>
        </tr>
        <tr>
            <td>מגדר:</td>
            <td>
                <input type="radio" name="gender" value="male"/>זכר
                <input type="radio" name ="gender" value="female"/>נקבה
            </td>
            <td>
                <input type="text" id="mGender" size="30"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>עיר מגורים</td>
            <td>
                <select name="city" id="city">
                <option value="other">בחר יישוב מגורים</option>
                <option value="חיפה">חיפה</option>
                <option value="תל אביב">תל אביב</option>
                <option value="ירושליים">ירושליים</option>
                <option value="מודיעין">מודיעין</option>
                <option value="באר שבע">באר שבע</option>
                <option value="מטולה">מטולה</option>
                <option value="צפון">צפון</option>
                <option value="מרכז">מרכז</option>
                <option value="דרום">דרום</option>
            </select>
        </td>
        <td>
        <input type="text" name="mCity" id="mCity" size="30"
            style="display: none; background-color: silver; font-weight: bold;"
            disabled="disabled" />                    
        </td>
        </tr>
        <tr>
            <td>שנת הלידה</td>
            <td>
                <input type="text" id="yearBorn" name="yearBorn" />
            </td>
            <td>
                <input type="text" name="mYearBorn" id="mYearBorn" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
            </td>
        </tr>
        
        <tr>
            <td>תחביבים</td>
                <td>
                    <table style ="width: 550px;">
                        <tr>
                            <td><input type="checkbox" name="hobby" value="1" />Computers</td>
                            <td><input type="checkbox" name="hobby" value="2" />Music</td>
                            <td><input type="checkbox" name="hobby" value="3" />Movies</td>
                            <td><input type="checkbox" name="hobby" value="4" />TV</td>
                            <td><input type="checkbox" name="hobby" value="5" />Horses</td>
                        </tr>
                     </table>
                    </td>
            </tr>
        <tr>
            <td>סיסמה</td>
            <td>
                <input type="password" name ="pw" id="pw" size="10" />
                <span style="color:red;"> * 6-10 תווים</span>
            </td>
            <td>
                <input type="text" name="mPassword" id="mPassword" size="30"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>אימות סיסמה</td>
    <td>
        <input type="password" name ="pwConfig" id="pwConfig" size="10" />
        <span style="color:red;"> * 6-10 תווים</span>
    </td>
    <td>
        <input type="text" name="mPasswordConfig" id="mPasswordConfig" size="30"
            style="display: none; background-color: silver; font-weight: bold;"
            disabled="disabled" />
    </td>
</tr>
        <tr>
    <td colspan="2" style="text-align:center;">
    <input type="submit" name="submit" value="  שלח  " class ="input" />
     </td>
</tr>
    </table>
</form>
    <br />
    <%= st %>
</asp:Content>
