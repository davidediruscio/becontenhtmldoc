<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.ConditionalTemplate" name="generate" post="trim()"%>
	<% generateDetailDiv("trueTemplate", trueTemplate ) %>
	<% generateDetailDiv("falseTemplate", falseTemplate ) %>
	<% generateDetailDiv("conditionExp", conditionExp ) %>
	<% generateDetailDiv("fieldName", fieldName ) %>
	<% generateDetailDiv("_id_model", _id_model ) %>

<%script type="becontent.ConditionalTemplate" name="ConditionalTemplate" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>