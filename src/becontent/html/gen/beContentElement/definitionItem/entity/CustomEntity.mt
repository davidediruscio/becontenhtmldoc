<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.CustomEntity" name="generate" post="trim()" %>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Variable Name", variableName ) %>
	<% generateDetailDiv("Is Owned", isOwned ) %>
	<% generateDetailDiv("Presentation String", presentationString ) %>
	<% generateDetailDiv("Rss Filter", rssFilter ) %>
	<%for (fields){%>
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%current().eClass().name%>_<%name%>.html"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>