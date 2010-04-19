<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.entityField.reference.Reference
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
	<% generateDetailDiv("Variable Name", variableName ) %>
	<% generateDetailDiv("Is Owned", isOwned ) %>
	<% generateDetailDiv("Presentation String", presentationString ) %>
	<% generateDetailDiv("Rss Filter", rssFilter ) %>
	<%for (fields){%>
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%Cleaner(current().generateFilename())%>" %>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>