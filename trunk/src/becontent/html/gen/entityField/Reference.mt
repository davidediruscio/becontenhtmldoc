<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Reference" name="generate" post="trim()"%>
	<% generateDetailDiv("isPresented", isPresented ) %>
 	<% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 	<% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 	<% generateDetailDiv("isTextSearch", isTextSearch ) %>
	<% generateDetailDiv("name", name ) %>
	<%for (referredEntity) {%> 
		<% generateReferenceDetailDiv("referredEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	
<%script type="becontent.Reference" name="Reference" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>