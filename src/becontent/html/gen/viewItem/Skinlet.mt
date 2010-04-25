<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Skinlet" name="generate" post="trim"%>
	<% generateDetailDiv("Template", template ) %>
	<% generateDetailDiv("Id_Model", _id_model ) %>
	
<%script type="becontent.Skinlet" name="Skinlet" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase(), current().generate() ) %>


