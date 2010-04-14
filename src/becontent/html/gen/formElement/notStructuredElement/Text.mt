<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.names
%>

<%script type="becontent.Text" name="generateFilename" post="trim()"%>
	<%for (ancestor().nReverse()) {%>
		<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
			<%current().getCompleteName().trim()%>/
		<%}%>
	<%}%>
	<%getCompleteName().trim()%>.html


<%script type="becontent.Text" name="generate" post="trim()"%>	
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Label", label ) %>
	<% generateDetailDiv("Size", size ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<% generateDetailDiv("MaxLength", maxLength ) %>
	<%if helper != null {%>
		<% generateDetailDiv("Helper", helper ) %>
	<%}%>


<%script type="becontent.Text" name="Text" file="<%generateFilename()%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>
