<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.ApplyIndexed" name="generate" post="trim()"%>
	<%if (_id_model != null && _id_model != ""){%>
		<% generateDetailDiv("_id_model", _id_model ) %>
	<%}else{%>
		<% generateDetailDiv("_id_model", "..." ) %>
	<%}%>
	<%for (viewItem) {%> 
		<%if (current()._id_model != null && current()._id_model != ""){%>
			<% generateReferenceDetailDiv("viewItem", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("viewItem", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	
<%script type="becontent.ApplyIndexed" name="ApplyIndexed" file="<%cleaner(current().generateFilename())%>"%>
<%if (_id_model != null && _id_model != ""){%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>