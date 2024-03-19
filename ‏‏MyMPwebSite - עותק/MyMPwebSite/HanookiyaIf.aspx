<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HanookiyaIf.aspx.cs" Inherits="MyMPwebSite.Spinner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    img {
        height: 400px;
        text-align: center;
        margin: 75px;
    }
</style>
    <script>
    function show(newPic)
    {
        pic.src = newPic;
    }

    function start() {
        var day = parseInt(prompt("כמה נרות להדליק?", 0));

        if (day == 1) newPic = "Pic/Hanookiya/Hanookiya1.PNG";
        else
            if (day == 2) newPic = "Pic/Hanookiya/Hanookiya2.PNG";
            else
                if (day == 3) newPic = "Pic/Hanookiya/Hanookiya3.PNG";
                else
                    if (day == 4) newPic = "Pic/Hanookiya/Hanookiya4.PNG";
                    else
                        if (day == 5) newPic = "Pic/Hanookiya/Hanookiya5.PNG";
                        else
                            if (day == 6) newPic = "Pic/Hanookiya/Hanookiya6.PNG";
                            else
                                if (day == 7) newPic = "Pic/Hanookiya/Hanookiya7.PNG";
                                else
                                    if (day == 8) newPic = "Pic/Hanookiya/Hanookiya8.PNG";
                                    else
                                        newPic = "Pic/Hanookiya/Hanookiya0.PNG";
        show(newPic);
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <center>
        <br /><br /><br />
        <img src="Pic/Hanookiya/Hanookiya0.PNG" 
             id="pic"
             alt="חנוכיה" onclick="start()" />
    </center>
</asp:Content>
