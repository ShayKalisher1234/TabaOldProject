<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="MyMPwebSite.TimeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    table {
        margin: 0px auto;
    }

    td, th {
        border: 1px solid black;
        text-align:center;
        padding:10px;
    }
    th{background-color:deeppink;}
    .math{background-color : pink;}
    .computerScience{background-color: lightblue;}
    .arabic{background-color: lightsalmon;}
    .litreture{background-color: lightskyblue;}
    .english{background-color: lightcyan;}
    .taba{background-color: palevioletred;}
    .IntroductionToBiology{background-color:burlywood;}
    .hebrew{background-color:antiquewhite;}
    .PE{background-color:indianred;}
    .mishpatEvry{background-color:aliceblue;}
    .history{background-color:khaki;}
    .hevra{background-color:coral;}
    .Taaboora{background-color:plum;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--------table-->
 <table style="border-collapse: collapse;">
     <!--שורה1--->
     <tr>
         <th>שיעור</th>
         <th>יום ראשון</th>
         <th>יום שני</th>
         <th>יום שלישי</th>
         <th>יום רביעי</th>
         <th>יום חמישי</th>
         <th>יום שישי</th>

     </tr>
     <!--שורה2--->
     <tr>
         <td style="background-color: deeppink">1</td>
         <td rowspan="2" class="math">מתמטיקה</td>
         <td rowspan="2" class="computerScience">מדעי המחשב</td>
         <td class="PE">חינוך גופני</td>
         <td class="Taaboora">תעבורה</td>
         <td rowspan="2" class="arabic">ערבית</td>
         <td class="litreture">ספרות</td>

     </tr>

     <!--שורה3--->
     <tr>
         <td style="background-color: deeppink">2</td>
         <td class="hevra">חברה</td>
         <td class="hebrew">עברית</td>
         <td> </td>


     </tr>
     <!--שורה4-->
     <tr>
         <td style="background-color: deeppink">3</td>
         <td class="hebrew">עברית</td>
         <td> </td>
         <td rowspan="2" class="math">מתמטיקה</td>
         <td rowspan="2" class="litreture">ספרות</td>
         <td class="litreture">ספרות</td>
         <td rowspan="2" class="english">אנגלית</td>
     </tr>

     <tr>
         <!--שורה5--->
         <td style="background-color: deeppink">4</td>
         <td rowspan="2" class="english">אנגלית</td>
         <td> </td>
         <td class="mishpatEvry">משפט עברי</td>

     </tr>

     <tr>
         <!--שורה6-->
         <td style="background-color: deeppink">5</td>
         <td class="math">מתמטיקה</td>
         <td></td>
         <td rowspan="2" class="computerScience"> מדעי המחשב</td>
         <td class="hevra">חברה</td>
         <td></td>
     </tr>

     <tr>
         <!---שורה7-->
         <td style="background-color: deeppink">6</td>
         <td rowspan="2" class="arabic">ערבית</td>
         <td></td>
         <td class="hebrew">עברית</td>
         <td class="math">מתמטיקה</td>
         <td></td>

     </tr>

     <tr>
         <!--שורה8--->
         <td style="background-color: deeppink">7</td>
         <td></td>
         <td rowspan="3" class="taba">תב"א</td>
         <td class="PE">חינוך גופני</td>
         <td rowspan="2" class="IntroductionToBiology">מבוא לביולוגיה</td>
         <td></td>
     </tr>

     <tr>
         <!--שורה9-->
         <td style="background-color: deeppink">8</td>
         <td class="math">מתמטיקה</td>
         <td></td>
         <td></td>
         <td></td>
     </tr>

     <tr>
         <!--שורה10--->
         <td style="background-color: deeppink">9</td>
         <td></td>
         <td></td>
         <td></td>
         <td class="history">היסטוריה מקוון</td>
         <td></td>
     </tr>

     <tr>
         <!--שורה11--->
         <td style="background-color: deeppink">10</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>

     </tr>

     <tr>
         <!--שורה12--->
         <td style="background-color: deeppink">11</td>
         <td></td>
         <td class="history">היסטוריה מקוון</td>
         <td></td>
         <td></td>
         <td></td>
         <td></td>

     </tr>
 </table>
</asp:Content>
