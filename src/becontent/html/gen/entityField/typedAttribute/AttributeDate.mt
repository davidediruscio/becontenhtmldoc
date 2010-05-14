<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.AttributeDate" name="generate" post="trim()"%>
	<% generateDetailDiv("isMandatory", isMandatory ) %>
	<% generateDetailDiv("isPresented", isPresented ) %>
 	<% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 	<% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 	<% generateDetailDiv("isTextSearch", isTextSearch ) %>
	<%if (name != null && name != ""){%>
		<% generateDetailDiv("name", name ) %>
	<%}else{%>
		<% generateDetailDiv("name", "..." ) %>
	<%}%>
	
<%script type="becontent.AttributeDate" name="AttributeDate" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>