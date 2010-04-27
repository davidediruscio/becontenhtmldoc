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
	<% generateDetailDiv("name", name ) %>
	<% generateDetailDiv("variableName", variableName ) %>
	<% generateDetailDiv("isOwned", isOwned ) %>
	<% generateDetailDiv("presentationString", presentationString ) %>
	<% generateDetailDiv("rssFilter", rssFilter ) %>
	<% generateDetailDiv("wqwqqw", cleaner(current().getGeneratedFilesPath+current().generateFilename()) ) %>
	<%for (fields){%>
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%for (rss){%>
		<% generateReferenceDetailDiv("rss", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%for (handler){%>
		<% generateReferenceDetailDiv("handler", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName() ) %>
	<%}%>

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML(name.toUpperCase(), current().generate())%>