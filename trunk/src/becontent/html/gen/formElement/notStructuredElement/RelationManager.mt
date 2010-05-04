<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.RelationManager" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("orientation", orientation ) %>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>

<%script type="becontent.RelationManager" name="RelationManager" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>