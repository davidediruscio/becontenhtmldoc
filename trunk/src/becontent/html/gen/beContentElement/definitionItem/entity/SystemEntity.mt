<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
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
import becontent.html.gen.systemEntityField.SystemReference
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeColor
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeDate
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeFile
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeFileToFolder
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeImage
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeInteger
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeLongDate
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributePassword
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributePosition
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeText
import becontent.html.gen.systemEntityField.typedSystemAttribute.SystemAttributeVarchar
%>

<%script type="becontent.SystemEntity" name="generate" post="trim()"%>
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
	<%for (systemFields){%>
		<%if current().name != null && current().name != "" {%>
			<% generateInnerDetailDiv("systemFields", current().eClass().name + ": " + current().name, current().generate() ) %>
		<%}else{%>
			<% generateInnerDetailDiv("systemFields", current().eClass().name + ": ...", current().generate() ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("variableName", variableName ) %>

<%script type="becontent.SystemEntity" name="SystemEntity" file="<%cleaner(current().generateFilename())%>"%>
<%if name != null && name != "" {%>
	<% generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<% generateHTML("...", current().generate())%>
<%}%>