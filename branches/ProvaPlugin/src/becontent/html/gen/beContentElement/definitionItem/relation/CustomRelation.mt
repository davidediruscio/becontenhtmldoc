<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.CustomRelation" name="generate" post="trim()"%>
	<%for (leftForeignkey) {%>
		<%if (current().name != null && current().name != ""){%>
			<% generateReferenceDetailDiv("leftForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("leftForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>		
	<%}%>
	<%if (name != null && name != ""){%>
		<% generateDetailDiv("name", name ) %>
	<%}else{%>
		<% generateDetailDiv("...", name ) %>
	<%}%>
	<%for (rightForeignkey) {%> 
		<%if (current().name != null && current().name != ""){%>
			<% generateReferenceDetailDiv("rightForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("rightForeignKey", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("variableName", variableName ) %>
	
<%script type="becontent.CustomRelation" name="CustomRelation" file="<%cleaner(current().generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<% generateHTML(name.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML("...", current().generate() ) %>
<%}%>