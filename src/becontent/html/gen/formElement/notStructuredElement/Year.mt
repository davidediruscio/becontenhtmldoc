<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Year" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("start", start ) %>
<% generateDetailDiv("end", end ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>


<%script type="becontent.Year" name="Year" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>