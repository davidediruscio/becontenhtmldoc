<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.ApplyIndexed" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<%for (viewItem) {%> 
		<% generateReferenceDetailDiv("viewItem", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	
<%script type="becontent.ApplyIndexed" name="ApplyIndexed" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>