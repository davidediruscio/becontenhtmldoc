<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Propagate" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<% generateDetailDiv("fieldName1", fieldName1 ) %>
	<% generateDetailDiv("fieldName2", fieldName2 ) %>
	
<%script type="becontent.Propagate" name="Propagate" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>