<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.formElement.Form
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<%for (customPagers) {%> 
		<% generateReferenceDetailDiv("customPagers", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<% generateDetailDiv("fileName", fileName ) %>
	<%for (forms){%>
		<% generateReferenceDetailDiv("forms", cleaner(current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("skin", skin ) %>
	<%for (validations) {%> 
		<% generateReferenceDetailDiv("validations", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>