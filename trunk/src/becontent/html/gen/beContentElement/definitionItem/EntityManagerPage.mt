<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.formElement.Form
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<% generateDetailDiv("File Name", fileName ) %>
	<% generateDetailDiv("Skin", skin ) %>
	<%for (forms){%>
		<% generateReferenceDetailDiv("Form", Cleaner(current().generateFilename()), current().name ) %>
	<%}%>	
	<%for (customPagers) {%> 
		<% generateReferenceDetailDiv("Custom Pager", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%for (validations) {%> 
		<% generateReferenceDetailDiv("Validations", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>