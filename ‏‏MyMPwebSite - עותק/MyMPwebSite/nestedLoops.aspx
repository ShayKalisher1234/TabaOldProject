<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="nestedLoops.aspx.cs" Inherits="MyMPwebSite.nestedLoops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{margin: 0px auto; border: 1px solid orange; direction: ltr;}
        td{border: 1px solid orange; padding: 10px}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
        <table>
            <tr>
                <td style="color:red; font-size: 18pt;">
                    <script>
                        for (var g = 0; g < 5; g++)
                        {
                            for (var i = 0; i < 5; i++)
                                document.write(" *");
                            document.write("</br>");
                        }

                    </script>

                </td>
                
                <td style="color:#5010ef; font-size: 18pt;">
                <script>
                for (var g = 1; g <= 5; g++) {
                    for (var i = 0; i < 5; i++)
                    document.write(" " + g);
                 document.write("</br>");
                 }

                </script>

                </td>
                <td style="color: #FFA500; font-size: 18pt;">
                <script>
                for (var g = 1; g <= 5; g++) {
                    for (var i = 1; i <= 5; i++)
                        document.write(" " + i);
                    document.write("</br>");
                 }       

                </script>

                </td>

            </tr>   
            <tr>
                <td style="color:red; font-size: 18pt;text-align: center;">
                 <script>
                for (var g = 0; g < 5; g++) {
                    for (var i = 0; i < g; i++)
                    document.write(" *");
                document.write("</br>");
                }

            </script>


            </td>
                
            <td style="color:#5010ef; font-size: 18pt;text-align: left;">
            <script>
         for (var g = 0; g < 5; g++) {
             for (var i = 0; i < g; i++)
                 document.write(" *");
             document.write("</br>");
                }
         

     </script>


        </td>
       <td style="color:orange; font-size: 18pt;text-align: left;">
       <script>
           for (var g = 1; g <= 5; g++) {
               for (var i = 1; i <= g; i++)
                   document.write(" " + g);
               document.write("</br>");
           }


       </script>
   </td>
   <td style="color:black; font-size: 18pt;text-align: left;">
    <script>
        for (var g = 1; g <= 5; g++) {
            for (var i = 1; i <= g; i++)
                document.write(" " + i);
            document.write("</br>");
        }


    </script>
</td>
    <td style="color:black; font-size: 18pt;text-align: left;">
    <script>
        for (var g = 5; g >= 1; g++) {
            for (var i = 5; i >= g; i--)
                document.write(" " + g);
            document.write("</br>");
        }

    </script>
</td>
 </tr>
         
        </table>
    </div>
</asp:Content>
