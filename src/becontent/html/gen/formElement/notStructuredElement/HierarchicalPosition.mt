<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.HierarchicalPosition" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("controlledField", controlledField ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("referenceField", referenceField ) %>
<% generateDetailDiv("size", size ) %>


<%script type="becontent.HierarchicalPosition" name="HierarchicalPosition" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>