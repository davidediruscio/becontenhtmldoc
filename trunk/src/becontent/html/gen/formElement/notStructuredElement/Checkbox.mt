<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>


<%script type="becontent.Checkbox" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("value", value ) %>
<% generateDetailDiv("isChecked", isChecked ) %>
<%if helper != null {%>
	<% generateDetailDiv("Helper", helper ) %>
<%}%>


<%script type="becontent.Checkbox" name="Checkbox" file="Cleaner(generateFilename())"%>
<%generateHTML(name.toUpperCase(), current().generate())%>