<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.CustomEntity" name="default2" file="<%current().eClass().name%>_<%name%>.html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--NewPage-->
<HTML>
<HEAD>
<meta name="collection" content="api">
<TITLE>
<% name.toUpperCase() %>
</TITLE>
 <STYLE type="text/css">
 	/* Javadoc style sheet */

	/* Define colors, fonts and other style attributes here to override the defaults */
	
	/* Page background color */
	body { background-color: #FFFFFF }
	
	/* Headings */
	h1 { font-size: 145% }
	
	/* Table colors */
	.TableHeadingColor     { background: #CCCCFF } /* Dark mauve */
	.TableSubHeadingColor  { background: #EEEEFF } /* Light mauve */
	.TableRowColor         { background: #FFFFFF } /* White */
	
	/* Font used in left-hand frame lists */
	.FrameTitleFont   { font-size: 100%; font-family: Helvetica, Arial, sans-serif }
	.FrameHeadingFont { font-size:  90%; font-family: Helvetica, Arial, sans-serif }
	.FrameItemFont    { font-size:  90%; font-family: Helvetica, Arial, sans-serif }
	
	/* Navigation bar fonts and colors */
	.NavBarCell1    { background-color:#EEEEFF;} /* Light mauve */
	.NavBarCell1Rev { background-color:#00008B;} /* Dark Blue */
	.NavBarFont1    { font-family: Arial, Helvetica, sans-serif; color:#000000;}
	.NavBarFont1Rev { font-family: Arial, Helvetica, sans-serif; color:#FFFFFF;}
	
	.NavBarCell2    { font-family: Arial, Helvetica, sans-serif; background-color:#FFFFFF;}
	.NavBarCell3    { font-family: Arial, Helvetica, sans-serif; background-color:#FFFFFF;}
 </STYLE>
	<script type="text/javascript">
	<!--
	    function toggle_visibility(id) {
	       var e = document.getElementById('div_'+ id);
	       var span = document.getElementById('span_'+ id);
	       if(e.style.display == 'block'){
	          e.style.display = 'none';
	          span.innerHTML = '-->'
	       } else {
	          e.style.display = 'block';
	          span.innerHTML = '<--'
	       }
	    }
	//-->
	</script>
 

</HEAD>

<BODY BGCOLOR="white" >
	<H2>
	<FONT SIZE="-1"><% current().eClass().name %></FONT>
	<BR>
	<% name %></H2>
	<HR>
	<A NAME="element_summary"><!-- --></A>
	<TABLE BORDER="1" WIDTH="100%" CELLPADDING="3" CELLSPACING="0" SUMMARY="">
		<TR BGCOLOR="#CCCCFF" CLASS="TableHeadingColor">
			<TH ALIGN="left" COLSPAN="2">
				<FONT SIZE="+2">
				<B>Element Summary</B>
				</FONT>
			</TH>
		</TR>
		<TR BGCOLOR="white" CLASS="TableRowColor">
			<TD ALIGN="right" VALIGN="top" WIDTH="10%">
				<CODE>Name: </CODE>
			</TD>
			<TD>
				<CODE><B><% current().eClass().name %></B></CODE>
			</TD>
		</TR>
		<TR BGCOLOR="white" CLASS="TableRowColor">
			<TD ALIGN="right" VALIGN="top" WIDTH="10%">
				<CODE>Variable Name: </CODE>
			</TD>
			<TD>
				<CODE><B><%current().variableName%></B></CODE>
			</TD>
		</TR>
		<TR BGCOLOR="white" CLASS="TableRowColor">
			<TD ALIGN="right" VALIGN="top" WIDTH="10%">
				<CODE>Is Owned:</CODE></FONT></TD>
			<TD>
				<CODE><B><%current().isOwned()%></B></CODE>
			</TD>
		</TR>
		<%for (fields){%>
			<TR BGCOLOR="white" CLASS="TableRowColor">
				<TD ALIGN="right" VALIGN="top" WIDTH="10%">
					<CODE><%current().eClass().name%>: </CODE>
				<TD>
					<CODE><B><%current().name%></B> <a href="#" onclick="toggle_visibility('<%current().eClass().name%>_<%current().name%>');"> <span id="span_<%current().eClass().name%>_<%current().name%>">--></span> </a></CODE>
					<div id="div_<%current().eClass().name%>_<%current().name%>" style="display: none;"><%current().Generate()%></div>
				</TD>
			</TR>				
		<%}%>	
	</TABLE>
</BODY>
</HTML>