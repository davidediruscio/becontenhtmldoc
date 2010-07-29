<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.services.FileService
import becontent.html.gen.entityField.Reference
import becontent.html.gen.entityField.typedAttribute.AttributeColor
import becontent.html.gen.entityField.typedAttribute.AttributeDate
import becontent.html.gen.entityField.typedAttribute.AttributeFile
import becontent.html.gen.entityField.typedAttribute.AttributeFileToFolder
import becontent.html.gen.entityField.typedAttribute.AttributeImage
import becontent.html.gen.entityField.typedAttribute.AttributeInteger
import becontent.html.gen.entityField.typedAttribute.AttributeLongDate
import becontent.html.gen.entityField.typedAttribute.AttributePassword
import becontent.html.gen.entityField.typedAttribute.AttributePosition
import becontent.html.gen.entityField.typedAttribute.AttributeText
import becontent.html.gen.entityField.typedAttribute.AttributeVarchar
%>

<%script type="becontent.CustomEntity" name="generate" post="trim()"%>
	<%for (fields){%>
		<%if current().name != null && current().name != "" {%>
			<% generateInnerDetailDiv("fields", current().eClass().name + ": " + current().name, current().generate() ) %>
		<%}else{%>
			<% generateInnerDetailDiv("fields", current().eClass().name + ": ...", current().generate() ) %>
		<%}%>
	<%}%>
	<%for (handler){%>
		<%if current().fileName != null && current().fileName != "" {%>
			<% generateReferenceDetailDiv("handler", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName() ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("handler", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("isOwned", isOwned ) %>
	<%if name != null && name != "" {%>
		<% generateDetailDiv("name", name ) %>
	<%}else{%>
		<% generateDetailDiv("name", "..." ) %>
	<%}%>
	<% generateDetailDiv("presentationString", presentationString ) %>
	<%for (rss){%>
		<%if _id_model != null && _id_model != "" {%>
			<% generateReferenceDetailDiv("rss", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("rss", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("rssFilter", rssFilter ) %>
	<% generateDetailDiv("variableName", variableName ) %>

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%cleaner(current().generateFilename())%>"%>
<%if name != null && name != "" {%>
	<% generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<% generateHTML("...", current().generate())%>
<%}%>