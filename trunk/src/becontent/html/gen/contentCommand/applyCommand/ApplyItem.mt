<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.ApplyItem" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<% generateDetailDiv("key", key ) %>
	<% generateDetailDiv("prefix", prefix ) %>
	<%for (viewItem) {%> 
		<% generateReferenceDetailDiv("viewItem", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	
<%script type="becontent.ApplyItem" name="ApplyItem" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>