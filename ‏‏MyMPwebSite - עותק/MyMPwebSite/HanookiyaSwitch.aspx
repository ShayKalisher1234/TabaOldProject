<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HanookiyaSwitch.aspx.cs" Inherits="MyMPwebSite.HanookiyaSwitch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    img {
        height: 400px;
        text-align: center;
        margin: 75px;
    }
</style>
<script>
    function show(newPic) {
        pic.src = newPic;
    }
    function start()
    {
        var day = parseInt(prompt("כמה נרות להדליק?", 0));
        

        switch (day)
        {
            case 1: newPic = "Pic/Hanookiya/Hanookiya1.PNG"; break;
            case 2: newPic = "Pic/Hanookiya/Hanookiya2.PNG"; break;
            case 3: newPic = "Pic/Hanookiya/Hanookiya3.PNG"; break;
            case 4: newPic = "Pic/Hanookiya/Hanookiya4.PNG"; break;
            case 5: newPic = "Pic/Hanookiya/Hanookiya5.PNG"; break;
            case 6: newPic = "Pic/Hanookiya/Hanookiya6.PNG"; break;
            case 7: newPic = "Pic/Hanookiya/Hanookiya7.PNG"; break;
            case 8: newPic = "Pic/Hanookiya/Hanookiya8.PNG"; break;
            default: newPic = "Pic/Hanookiya/Hanookiya0.PNG"; break;
                
                
        }
        show(newPic);
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
     <br /><br /><br />
       
     <img src="Pic/Hanookiya/Hanookiya0.png"
          id="pic"
          alt="חנוכיה" onclick="start()" />
 </center>
</asp:Content>
