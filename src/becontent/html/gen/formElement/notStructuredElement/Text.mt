<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.Text" name="generate" post="trim()"%>
		
		<% generateDetailDiv("Name", name ) %>
		<% generateDetailDiv("Label", label ) %>
		<% generateDetailDiv("Size", size ) %>
		<% generateDetailDiv("IsMandatory", isMandatory ) %>
		<% generateDetailDiv("MaxLength", maxLength ) %>
		<%if helper != null {%>
			<% generateDetailDiv("Helper", helper ) %>
		<%}%>


<%script type="becontent.Text" name="Text" file="<%current().eClass().name%>_<%name%>.html"%>

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