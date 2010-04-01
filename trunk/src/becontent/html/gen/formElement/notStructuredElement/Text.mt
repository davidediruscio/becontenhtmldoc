<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.Text" name="Generate" post="trim()"%>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>Name: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%name%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>Label: </CODE></FONT></TD>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%label%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>size: </CODE></FONT></TD>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%size%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>isMandatory: </CODE></FONT></TD>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%isMandatory%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>maxLength: </CODE></FONT></TD>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%maxLength%></B></CODE>
			</SPAN>
		</DIV>
		<%if helper != null {%>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>helper: </CODE></FONT></TD>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%helper%></B></CODE>
			</SPAN>
		</DIV>
		<%}%>


<%script type="becontent.Text" name="Text" file="<%current().eClass().name%>_<%name%>.html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--NewPage-->
<HTML>
<HEAD>
<meta name="collection" content="api">
<TITLE>
<%name.toUpperCase()%>
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

</HEAD>

<BODY BGCOLOR="white" >
	<H2>
	<FONT SIZE="-1"><%current().eClass().name%></FONT>
	<BR>
	<%name%></H2>
	<HR>
	<A NAME="element_summary"><!-- --></A>
	<%Generate()%>
</BODY>
</HTML>