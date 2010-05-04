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
%>

<%script type="becontent.CustomEntity" name="generate" post="trim()"%>
	<%for (fields){%>
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%for (handler){%>
		<% generateReferenceDetailDiv("handler", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName() ) %>
	<%}%>
	<% generateDetailDiv("isOwned", isOwned ) %>
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("presentationString", presentationString ) %>
	<%for (rss){%>
		<% generateReferenceDetailDiv("rss", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<% generateDetailDiv("rssFilter", rssFilter ) %>
	<% generateDetailDiv("variableName", variableName ) %>

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(name.toUpperCase(), current().generate())%>