<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Corporation | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:250px;
	height:131px;
	z-index:1001;
	left: 87px;
	top: 109px;
}
#apDiv2 {
	position:absolute;
	width:280px;
	height:115px;
	z-index:1001;
	left: 362px;
	top: 128px;
}
</style>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">MyCloud</a><img name="" src="images/demo/Untitled-4.png" width="129" height="103" alt="" /></h1>
    <div id="topnav">
      <ul>
        <li><a class="active" href="Adminhome.jsp">Home</a></li>
        <li><a href="user_details.jsp">User Details</a></li>
        <li><a href="user_updetails.jsp">Upload Details</a></li>
        <li><a href="user_accesslog.jsp">Access Log</a></li>
        <li><a href="logout.jsp"> Logout</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="breadcrumb">
    <ul>
      <li class="first"></li>
    </ul>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div class="clear">
      <p>&nbsp;</p>
      <div style="position:absolute; left:129px; top:65px; width: 687px; height: 314px;">
        <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
          <tr>
            <td height="40" colspan="2" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>fileupload 
              details</strong></font></em></font></u></td>
          </tr>
          <tr>
            <td width="150" height="263"><img src="images/h.jpg" alt="" width="193" height="160"/></td>
            <td width="534"><table width="432"  align="center"  bgcolor="#000000">
              <tr bgcolor="#333333" >
                <td width="103" height="21" align="center"><font color="#FFFFFF" size="2">username</font></td>
                <td width="103" height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
                <td width="104" align="center"><font color="#FFFFFF" size="2">fid</font></td>
                <td width="122" align="center" ><font color="#FFFFFF" size="2">size</font></td>
                <td width="83" align="center" ><font color="#FFFFFF" size="2">date</font></td>
              </tr>
              <%
String uname=null;
String fname=null;
String fid=null;
String size=null;
String date=null;


try
{
Connection con=null;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:DRIVER={SQL Server};Database=fogcomputing;Server=VARUN\\SQLEXPRESS","sa","varunnr");
PreparedStatement ps=con.prepareStatement("select uname,fname,fid,size,date from fileupload" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
uname=rs.getString(1);
fname=rs.getString(2);
fid=rs.getString(3);
size=rs.getString(4);
date=rs.getString(5);

%>
              <tr bgcolor="#FFFFFF">
                <td height="20" align="center"><strong><em><font color="#002851"> <%=uname%> </font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"><%=fname%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"><%=fid%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"><%=size%></font></em></strong></td>
                <td align="center"><strong><em><font color="#002851"><%=date%></font></em></strong></td>
              </tr>
              <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
            </table></td>
          </tr>
        </table>
      </div>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </div>
  </div>
</div>
<div class="wrapper col5">
  <div id="footer">
    <div id="contactform">
      <h2>Contact Us Today !</h2>
      <p></p>
      <h2>Mail @ mycloudsite@gmail.com</h2>
      <h2>Contact : 1800-11-722</h2>
    </div>
    <!-- End Contact Form -->
    <div id="compdetails">
      <div id="officialdetails">
        <h2>Company Information !</h2>
        <ul>
          <li>Company Mycloudsite Ltd</li>
          <li>Registered in Combatore</li>
          <li>Company No. 722553 </li>
        </ul>
      </div>
      <div id="contactdetails">
        <h2>Our Contact Details !</h2>
        <ul>
          <li>MyCloudSite Ltd</li>
          <li>R S Puram</li>
          <li>Coimbatore</li>
          <li>641002</li>
          <li>Tel: 08754208698</li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
    <!-- End Company Details -->
    <div id="copyright">
      <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved </p>
      <p class="fl_right"><br class="clear" />
      </p>
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>
