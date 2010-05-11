<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.formElement.Form
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<%for (customPagers) {%>
		<%if current()._id_model != null && current()._id_model != "" {%>
			<% generateReferenceDetailDiv("customPagers", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("customPagers", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<%if fileName != null && fileName != "" {%>
		<% generateDetailDiv("fileName", fileName ) %>
	<%}else{%>
		<% generateDetailDiv("fileName", "..." ) %>
	<%}%>
	<%for (forms){%>
		<%if current().name != null && current().name != "" {%>
			<% generateReferenceDetailDiv("forms", cleaner(current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("forms", cleaner(current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("skin", skin ) %>
	<%for (validations) {%>
		<%if current()._id_model != null && current()._id_model != "" {%> 
			<% generateReferenceDetailDiv("validations", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("validations", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%cleaner(current().generateFilename())%>"%>
<%if fileName != null && fileName != "" {%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>
