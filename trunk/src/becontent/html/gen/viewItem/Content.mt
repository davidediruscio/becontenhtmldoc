<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Content" name="generate" post="trim()"%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	<%for (commands) {%> 
		<% generateDetailDiv("commands", "TODO" ) %>
	<%}%>
	<%for (conditionalTemplate) {%> 
		<% generateDetailDiv("conditionalTemplate", "TODO" ) %>
	<%}%>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("joinCondition", joinCondition ) %>
	<%for (joinEntities) {%> 
		<% generateReferenceDetailDiv("joinEntities", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<% generateDetailDiv("limit", limit ) %>
	<%for (mainEntity) {%> 
		<% generateReferenceDetailDiv("mainEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("orderFields", orderFields ) %>
	<% generateDetailDiv("presentationFields", presentationFields ) %>
	<% generateDetailDiv("style", style ) %>	
	<% generateDetailDiv("template", template ) %>
	
<%script type="becontent.Content" name="Content" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase(), current().generate())%>