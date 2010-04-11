<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.EntityField" name="generate" post="trim"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Label", label ) %>
	<% generateDetailDiv("Default Color", defaultColor ) %>

<%script type="becontent.EntityField" name="EntityField" file="<%current().eClass().name%>_<%name%>.html"%>
