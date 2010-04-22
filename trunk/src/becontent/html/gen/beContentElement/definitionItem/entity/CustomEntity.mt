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

<%script type="becontent.CustomEntity" name="generate" post="trim()" %>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("VariableName", variableName ) %>
	<% generateDetailDiv("IsOwned", isOwned ) %>
	<% generateDetailDiv("PresentationString", presentationString ) %>
	<% generateDetailDiv("RssFilter", rssFilter ) %>
	<%for (fields){%>
		<% generateReferenceDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%for (rss){%>
		<% generateReferenceDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%for (handler){%>
		<% generateReferenceDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%Cleaner(current().generateFilename())%>" %>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>