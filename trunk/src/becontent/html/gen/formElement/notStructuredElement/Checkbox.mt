<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.Checkbox" name="generate" post="trim()"%>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>name: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%name%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>label: </CODE></FONT>
			</SPAN>
			<SPAN class="detailValue">				
				<CODE><B><%label%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>value: </CODE></FONT>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%value%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>isChecked: </CODE></FONT>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%isChecked%></B></CODE>
			</SPAN>
		</DIV>
		<%if helper != null {%>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>helper: </CODE></FONT>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%helper%></B></CODE>
			</SPAN>
		</DIV>
		<%}%>


<%script type="becontent.Checkbox" name="Checkbox" file="<%current().eClass().name%>_<%name%>.html"%>
<% generateHeader( name.toUpperCase() ) %>
<BODY BGCOLOR="white" >
	<H2>
	<FONT SIZE="-1"><%current().eClass().name%></FONT>
	<BR>
	<%name%></H2>
	<HR>
	<DIV style="width: 100%; padding: 3px; ">
		<DIV style="float: left; background-color: #CCCCFF; width: 100%;" >
			<FONT SIZE="+2">
			<B>Element Summary</B>
			</FONT>
		</DIV>	
		<%generate()%>
	</DIV>
</BODY>
</HTML>