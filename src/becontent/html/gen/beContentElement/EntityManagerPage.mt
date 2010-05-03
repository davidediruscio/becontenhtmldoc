<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.formElement.Form
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<% generateDetailDiv("fileName", fileName ) %>
	<% generateDetailDiv("skin", skin ) %>
	<%for (forms){%>
		<% generateReferenceDetailDiv("forms", cleaner(current().generateFilename()), current().name ) %>
	<%}%>	
	<%for (customPagers) {%> 
		<% generateReferenceDetailDiv("customPagers", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%for (validations) {%> 
		<% generateReferenceDetailDiv("validations", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>