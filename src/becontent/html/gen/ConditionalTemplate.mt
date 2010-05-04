<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.ConditionalTemplate" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<% generateDetailDiv("conditionExp", conditionExp ) %>
	<% generateDetailDiv("falseTemplate", falseTemplate ) %>
	<% generateDetailDiv("fieldName", fieldName ) %>
	<% generateDetailDiv("trueTemplate", trueTemplate ) %>

<%script type="becontent.ConditionalTemplate" name="ConditionalTemplate" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>