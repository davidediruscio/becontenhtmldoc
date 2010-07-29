<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.services.FileService
%>

<%script type="becontent.Content" name="generate" post="trim()"%>
	<%if (_id_model != null && _id_model != ""){%>
		<% generateDetailDiv("_id_model", _id_model ) %>
	<%}else{%>
		<% generateDetailDiv("_id_model", "..." ) %>
	<%}%>
	<%for (commands) {%>
		<%if (current().eClass().name == "Parameter" || current().eClass().name == "Trigger" || current().eClass().name == "UnsetParameter"){%>
			<%if (current().name != null && current().name != ""){%>
				<% generateReferenceDetailDiv("commands", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("commands", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}else{%>
			<%if (current()._id_model != null && current()._id_model != ""){%>
				<% generateReferenceDetailDiv("commands", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("commands", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}%>
	<%}%>
	<%for (conditionalTemplate) {%>
		<%if (current()._id_model != null && current()._id_model != ""){%>
			<% generateReferenceDetailDiv("conditionalTemplate", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("conditionalTemplate", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("joinCondition", joinCondition ) %>
	<%for (joinEntities) {%>
		<%if (current()._id_model != null && current()._id_model != ""){%>
			<% generateReferenceDetailDiv("joinEntities", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("joinEntities", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("limit", limit ) %>
	<%for (mainEntity) {%>
		<%if (current().name != null && current().name != ""){%>
			<% generateReferenceDetailDiv("mainEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("mainEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>		
	<%}%>
	<% generateDetailDiv("orderFields", orderFields ) %>
	<% generateDetailDiv("presentationFields", presentationFields ) %>
	<% generateDetailDiv("style", style ) %>	
	<% generateDetailDiv("template", template ) %>
	
<%script type="becontent.Content" name="Content" file="<%cleaner(current().generateFilename())%>"%>
<%if (_id_model != null && _id_model != ""){%>
	<% generateHTML(_id_model.toUpperCase(), current().generate())%>
<%}else{%>
	<% generateHTML("...", current().generate())%>
<%}%>