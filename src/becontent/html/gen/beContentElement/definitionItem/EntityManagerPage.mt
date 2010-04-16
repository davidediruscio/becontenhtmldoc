<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.formElement.Form
import becontent.html.gen.services.StringService
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<% generateDetailDiv("Name", fileName ) %>
	<% generateDetailDiv("Skin", skin ) %>
	<%for (eContents().filter("Form")){%>
		<% generateReferenceDetailDiv("Form", Cleaner(current().generateFilename()), current().name ) %>
	<%}%>	
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>