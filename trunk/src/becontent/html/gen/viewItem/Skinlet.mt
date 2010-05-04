<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Skinlet" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<% generateDetailDiv("template", template ) %>
	
<%script type="becontent.Skinlet" name="Skinlet" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase(), current().generate() ) %>


