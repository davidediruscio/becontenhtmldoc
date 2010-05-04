<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemRelation" name="generate" post="trim()"%>
	<%for (leftForeignkey) {%> 
		<% generateReferenceDetailDiv("leftForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("name", name ) %>
	<%for (rightForeignkey) {%> 
		<% generateReferenceDetailDiv("rightForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("variableName", variableName ) %>
	
<%script type="becontent.SystemRelation" name="SystemRelation" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(name.toUpperCase().toUpperCase(), current().generate() ) %>

