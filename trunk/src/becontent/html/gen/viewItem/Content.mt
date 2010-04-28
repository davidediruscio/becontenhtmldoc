<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Content" name="generate" post="trim"%>
	<% generateDetailDiv("template", template ) %>
	<% generateDetailDiv("presentationFields", presentationFields ) %>
	<% generateDetailDiv("orderFields", orderFields ) %>
	<% generateDetailDiv("joinCondition", joinCondition ) %>
	<% generateDetailDiv("filter", filter ) %>
	<% generateDetailDiv("limit", limit ) %>
	<% generateDetailDiv("style", style ) %>
	<%-- BISOGNA IMPLEMENTARE SystemEntity <%for (mainEntity) {%> 
		<% generateReferenceDetailDiv("mainEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%> --%>
	<%for (joinEntities) {%> 
		<% generateReferenceDetailDiv("joinEntities", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%for (commands) {%> 
		<% generateDetailDiv("commands", "TODO" ) %>
	<%}%>
	<%for (conditionalTemplate) {%> 
		<% generateDetailDiv("conditionalTemplate", "TODO" ) %>
	<%}%>
	<% generateDetailDiv("_id_model", _id_model ) %>
	
<%script type="becontent.Content" name="Content" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(_id_model.toUpperCase(), current().generate())%>