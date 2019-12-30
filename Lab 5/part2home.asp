<%
Dim lastvisit
lastvisit=Request.Cookies("LastVisit")
Response.Write("<html>")
Response.Write("<body style='background-color:#"& Request.QueryString("color") &";''>")
If lastvisit = "" Then
    Response.Cookies("LastVisit") = Date()
    lastvisit = Request.Cookies("LastVisit")
    Response.Write("<h2 align='center'>")
    Response.Write("Welcome To Your First Time On The Website <br> Todays Date Is: " & lastvisit)
    Response.Write("</h2>")
Else
  lastvisit = Request.Cookies("LastVisit")
  Response.Write("<h2 align='center'>")
  Response.Write("Welcome To The Website AGAIN <br> The Last Time You Accessed The Site Was: " & lastvisit)
  Response.Write("</h2>")
End If

Response.Write("In order to change the color of the website background, add the following text to the end of the current website URL: <h3>?color=******</h3><strong>Note: Replace the ****** with the hex code for the desired color.</strong><br>For Example: '?color=ff0000' will get you red")
Response.Write("<br>Try For Youself: <a href='http://cps530-labs-ks.somee.com/lab05/part2home.asp?color=ff0000'>http://cps530-labs-ks.somee.com/lab05/part2home.asp?color=ff0000</a>")
Response.Write("</body></html>")
%>