<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.RelationManager" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("orientation", orientation ) %>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.RelationManager" name="RelationManager" file="<%Cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>