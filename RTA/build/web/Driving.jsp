<%@page import="java.sql.*,java.util.Random" %>

<%
int x = 10000;
		Random r = new Random();
		int no = r.nextInt(x);
 %>
<html>
<br><br>
<head>

<script language="javascript">
function onlyNumsAllowed()
	{
	    var iKeyCode;

		iKeyCode = event.keyCode;

	    //
	    //  If key pressed is not 0 - 9, don't allow it through.
	    //
	    if( iKeyCode < 48 || iKeyCode > 57 )
	        event.keyCode = null;
	}

function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
		}
		
function validate()
		{
			
			if(ChkMandatoryField(fone.flightname,'flightname')==false) return false;
            
            if(ChkMandatoryField(fone.fare,'fare')==false) return false;
            if(ChkMandatoryField(fone.date,'date')==false) return false;
            if(ChkMandatoryField(fone.takeoftime,'takeoftime')==false) return false;
            if(ChkMandatoryField(fone.duration,'duration')==false) return false;
		}
</script>
</head>
<body bgcolor="#FFFAF0"><center>
<form  action="BookingSlotForDrivingLicense" method="Post">
<font color="blue"><h4>BOOKING SLOT FOR DRIVING LICENSE</h4></font><br>
<table>



<tr>
  <td><b>UserID:</b></td>
  <td><input type="text" name="userid"  value=<%=(String)session.getAttribute("userid") %>></td>
</tr>

<tr>
 <td><b>Date:</b></td>
 <td><input type="date" name="date" ></a> </tr>
<%if(request.getParameter("msg")!=null)
{
%>
<tr>
<td align="center" colspan="2"><b><font color="blue"><%=request.getParameter("msg")%></font></b></td></tr>
<%
}
 %>
</table><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="sub" value="ADD" onclick="return validate()"/></form></center>

</body>

</html>

