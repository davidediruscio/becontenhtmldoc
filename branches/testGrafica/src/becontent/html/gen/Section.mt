<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.Section" name="Generate" post="trim()"%>
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
				<CODE><B><%name%></B></CODE>
			</TD>
		</TR>
		<TR BGCOLOR="white" CLASS="TableRowColor">
			<TD ALIGN="right" VALIGN="top" WIDTH="10%">
				<CODE>Text: </CODE></FONT></TD>
			<TD>
				<CODE><B><%text%></B></CODE>
			</TD>
		</TR>
		<%if helper != null {%>
		<TR BGCOLOR="white" CLASS="TableRowColor">
			<TD ALIGN="right" VALIGN="top" WIDTH="10%">
				<CODE>Helper: </CODE></FONT></TD>
			<TD>
				<CODE><B><%helper%></B></CODE>
			</TD>
		<%}%>
		</TR>
	</TABLE>
