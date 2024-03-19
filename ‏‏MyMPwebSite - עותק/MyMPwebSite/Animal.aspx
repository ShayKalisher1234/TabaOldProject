<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Animal.aspx.cs" Inherits="MyMPwebSite.Animal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    
    img {
        height: 150px;
    }

    h1 {
        color: black;
        <!--shay-->
        text-decoration: underline;
        text-align: center;
        text-decoration: underline;
        font-family: Calibri;
    }

    h2 {
        color: black;
        text-align: right;
        
        font-family: Calibri;
    }

    p {
        color: #4b2844;
        font-size: 16pt;
        font-weight: bold;
        font-family:Calibri;
    }

    hr {
        width: 90%;
        height: 3px;
        background-color: black;
        text-align: right;
        font-family: Calibri;
    }

    ul {
        margin-right: 200px;
        font-family: Calibri;
    }

    h3 {
        color: black;
        text-align: right 
        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>בעלי חיים</h1>
    <hr />

    <ul style="margin-top: 5px;">
        <li> <a href="#Lion"> <h3> אריה</h3> </a> </li>
        <li> <a href="#Elephant"> <h3>פיל</h3> </a></li>
        <li> <a href="#tiger"><h3> נמר</h3>  </a></li>
        <li> <a href="#Capybara"> <h3> קפיבארה</h3> </a></li>
        <li> <a href="#Snake"> <h3> נחש</h3> </a> </li>
        <li> <a href="#dolphin"> <h3> דולפין</h3> </a></li>
        <li> <a href="#Cat"> <h3> חתול</h3> </a></li>
        <li> <a href="#Hamster"> <h3> אוגר</h3> </a> </li>



    </ul>

    <hr style="margin-bottom: 20px;" /> <br /><br /><br />
    <div style="margin-left: 120px; margin-right: 120px; ">

    
        <h2 id="Lion">אריה</h2>


        
        <p>

            <b> אריה (שם מדעי : Panthera leo)</b>  הוא מין של טורף גדול מהסוג פנתר שבמשפחת החתוליים, והוא השני בגודלו בין בני הקבוצה דמויי חתול, אחרי תת-המין הסיבירי של הטיגריס.
            האריה נפוץ בעיקר ביבשת אפריקה, אך גם במדינת גוג'ראט שבהודו. הוא ניזון מאוכלי עשב שונים אותם הוא צד, וכן מפגרים. <br />
            בתרבות האנושית נחשב האריה סמל לגבורה וכוח, ולכן הוצמד לו הכינוי "מלך החיות". תוחלת חייו בטבע היא בין 12 ל-18 שנים, אך בשבי הוא יכול לחיות עד 30 שנה. שמות נוספים של האריה בשפה העברית הם ליש, שחל, שחץ ולביא.[2] שם נקבת האריה הוא לביאה אריה צעיר נקרא כפיר.
        </p>
        <p>
            <a href="lion.aspx">קרא עוד...</a>
        </p>
        <br />
        <div style="text-align: center;">
            <img src="Pic/lion1.png" />
            <img src="Pic/lion2.png" />
            <img src="Pic/lion3.png" />
        </div>

        <div style="text-align:center;">
            <a href="#top">
                <img src="Pic/TheBackButton.png" style="width: 100px; " />
            </a>
        </div>


        <h2 id="Elephant" style="color: black;">פיל</h2>

        
        <p>
            <b>פיל הוא מונח לקבוצה פוליפילטית של שלושה מיני יונקים </b> – פיל סוואנה אפריקני, פיל יער אפריקני ופיל אסייתי – שהם חיות היבשה הגדולות ביותר בעולם והמינים היחידים ששרדו במשפחת הפיליים. <br />
            בעבר היו מינים נוספים מהמשפחה, ביניהם הממותה, הפלאולוקסודון והסטגוטטרבלודון שאינם נחשבים לפילים רגילים.
        </p>
        <p>
            <a href="Elephant.aspx">קרא עוד...</a>
        </p>
        <br />
        <div style="text-align : center;">
            <img src="Pic/elephant1.png" />
            <img src="Pic/elephant2.png" />
            <img src="Pic/elephant3.png" />


        </div>
        <div style="text-align: center">
        <a href="#top">
            <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
        </div>

    <h2 id="tiger" style="color: black;">נמר</h2>

    
    <p>
        <b> נמר (שם מדעי: Panthera pardus)</b>  הוא מין של יונק טורף-על ממשפחת החתוליים השייך לסוג פנתר והוא מבין הקטנים שבבני סוגו, גדול רק מנמר השלג. <br />
        הנמר שוכן בסוואנות, מדבריות, מורדות הרים ויערות שונים לאורך אפריקה ודרומה של אסיה והוא מצוי בסכנת הכחדה. נמרים נצפו גם בישראל לאורך השנים, אף שכיום לא ברור אם שרדו נמרים בטבע.
    </p>
    <p>
        <a href="Tiger.aspx">קרא עוד...</a>
    </p>
    <br />
    <div style="text-align: center;">
        
    </div>
    <div style="text-align : center;">
        <img src="Pic/tiger1.png" />
        <img src="Pic/tiger2.png" />
        <img src="Pic/tiger3.png" />
    </div>

    <div style="text-align: center;">
    <a href="#top">
        <img src="Pic/TheBackButton.png" style="width: 100px; " />
    </a>
    </div>

    <h2 id="Cat">חתול</h2>
    
    
    <p>

        <b> חתול הבית (שם מדעי: Felis silvestris catus)</b>  הוא יונק טורף מבוית, מהסוג חתול ממשפחת החתוליים. החתול נפוץ בכל יבשות העולם מלבד באנטארקטיקה. משערים כי מוצאו מחתול הבר. החתול הוא טורף לילי הצד מכרסמים, ציפורים ודגים. <br />
        נכון ל-2009, החתול הוא חיית המחמד הנפוצה ביותר בעולם, ומספר החתולים הביתיים נאמד בכ-600 מיליון.[1] החתול חי בדרך כלל בבדידות, למעט אינטראקציה מזדמנת עם בני מינו.

    </p>
    <p>
        <a href="Cat.aspx">קרא עוד...</a>
    </p>
    <br>
    <div style="text-align : center;">
        <img src="Pic/cat1.png" />
        <img src="Pic/cat2.png" />
        <img src="Pic/cat3.png" />
    </div>
    <div style="text-align: center;">
        <a href="#top">
            <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
    </div>

    <h2 id="Capybara" style="color: black; ">קפיבארה</h2>
    
    
    <p>
        <b> קפיבארה (שם מדעי: Hydrochoerus)</b> הוא סוג של מכרסם ענק מאמריקה הדרומית ששייך למשפחת הקביתיים. זהו המכרסם הגדול ביותר בעולם – משקלו הממוצע 50 ק"ג, ואורכו 130 ס"מ. הקפיבארות הננסיות קטנות מעט יותר מקרובותיהן.
    </p>
    <p>
        <a href="Capybara.aspx">קרא עוד...</a>
    </p>
    <br />
    <div style="text-align : center;">
        <img src="Pic/capybara1.png" />
        <img src="Pic/capybara2.png" />
        <img src="Pic/capybara3.png" />
    <p style="color : navy; font-size : 14pt; ">
    </div>

    <div style="text-align: center;">
        <a href="#top">
        <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
    </div>

    <h2 id="Snake" style="color: black; ">נחש</h2>
    
    
    <p>
        <b>נחשים (שם מדעי: Serpentes) </b> הם זוחלים טורפים חסרי גפיים, בעלי גוף מאורך ומכוסה בקשקשים. ישנם כ-4,060 מינים של נחשים מ-30 משפחות. נחשים מהווים תת-סדרה של סדרת הקשקשאים, ושייכים לקבוצה האופידיה.
    </p>
    <p>
        <a href="snake.aspx">קרא עוד...</a>
    </p>
    <br />
     <div style="text-align : center;">
        <img src="Pic/snake1.png" />
        <img src="Pic/snake2.png" />
        <img src="Pic/snake3.png" />
    <p style="color : navy; font-size : 14pt; ">
     </div>
    <div style="text-align: center;">
        <a href="#top">
        <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
    </div>

    <h2 id="Hamster" style="color: black; ">אוגר</h2>
    
    
    <p>

        <b> האוגר (שם מדעי: Mesocricetus) </b>הוא סוג מכרסם בתת-משפחת האוגרים ממשפחת האוגריים. הסוג כולל ארבעה מינים ונפוץ באזור דרום-מזרח אירופה. האוגרים הם בעלי חיים ליליים.
        לאוגר גוף קטן מאוד כ-17 ס"מ בלבד אורכו, הזכר קטן אך במקצת מן הנקבה. אוזניו קטנות אך חוש השמיעה שלו מפותח מאוד. גם חוש הריח שלו מפותח מאוד. לעומתם, חוש הראייה אינו מפותח. שיני האוגרים, כדרכם של המכרסמים, צומחות כל הזמן.

        האוגר בטבע אוכל בעיקר זרעים אך הוא לא יבחל גם בחרקים ובפירות למיניהם.

        האוגר מגיע לבגרות מינית בגיל 11 שבועות בערך. עונת הייחום בטבע היא בחורף. ההריון הוא הקצר ביותר במחלקת היונקים - 16 עד 18 יום בלבד[1]. האוגרות ממליטות פעמים אחדות בשנה; בכל המלטה יופיעו בין שניים לשישה גורים (תלוי בסוג האוגר)[1] חסרי ישע ועיוורים[1].
    </p>
    <p>
        <a href="Hamster.aspx">קרא עוד...</a>
    </p>
    <br />
     <div style="text-align : center;">
        <p style="color : navy; font-size : 14pt; ">
            <img src="Pic/hamster1.png" />
            <img src="Pic/hamster2.png" />
            <img src="Pic/hamster3.png" />
     </div>
     <div style="text-align: center;">
        <a href="#top">
        <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
     </div>

    <h2 id="dolphin" style="color: black;">דולפין</h2>
    
    
    <p>
        הדולפינים הם קבוצה פרפילטית (לא טקסונומית) של יונקים ימיים השייכים לסדרת הלווייתנאים (Cetacea), ולתת-סדרה לווייתני שיניים.  <b> הם מתחלקים לשתי על-משפחות</b> : <br />
        דולפינים ובה משפחת דולפינים יחידה - דולפיניים (אך ישנם גם פוקניים וחדשיניים, שאינם נחשבים דולפיניים), <br />
        ודולפיני נהרות, ובה ארבע משפחות.
    </p>
    <p>
        <a href="Dolphin.aspx">קרא עוד...</a>
    </p>
    <br />
    <div style="text-align : center;">
        <img src="Pic/dolphin1.png" />
        <img src="Pic/dolphin2.png" />
        <img src="Pic/dolphin3.png" />
    <p style="color : navy; font-size : 14pt; ">
    </div>

    <div style="text-align: center">
        <a href=#top>
            <img src="Pic/TheBackButton.png" style="width: 100px; " />
        </a>
    </div>
        </div>
</asp:Content>
