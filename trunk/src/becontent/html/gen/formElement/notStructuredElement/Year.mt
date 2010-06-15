<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.Year" name="generate" post="trim()"%>
<% generateDetailDiv("end", end ) %>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<%if (name != null && name != ""){%>
	<% generateDetailDiv("name", name ) %>
<%}else{%>
	<% generateDetailDiv("name", "..." ) %>
<%}%>
<% generateDetailDiv("start", start ) %>

<%script type="becontent.Year" name="generateFormHTML" post="trim()"%>
<select name="<%name%>">
	<option value="<%start%>"><%start%></otion>
	<option value="...">...</otion>
	<option value="<%end%>"><%end%></otion>
</select>

<%script type="becontent.Year" name="Year" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>