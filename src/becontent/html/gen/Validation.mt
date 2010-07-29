<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.formElement.notStructuredElement.Checkbox
import becontent.html.gen.formElement.notStructuredElement.Color
import becontent.html.gen.formElement.notStructuredElement.Date
import becontent.html.gen.formElement.notStructuredElement.Editor
import becontent.html.gen.formElement.notStructuredElement.File
import becontent.html.gen.formElement.notStructuredElement.FileToFolder
import becontent.html.gen.formElement.notStructuredElement.Hidden
import becontent.html.gen.formElement.notStructuredElement.HierarchicalPosition
import becontent.html.gen.formElement.notStructuredElement.Image
import becontent.html.gen.formElement.notStructuredElement.Link
import becontent.html.gen.formElement.notStructuredElement.LongDate
import becontent.html.gen.formElement.notStructuredElement.Password
import becontent.html.gen.formElement.notStructuredElement.Position
import becontent.html.gen.formElement.notStructuredElement.RadioButton
import becontent.html.gen.formElement.notStructuredElement.RadioFromReference
import becontent.html.gen.formElement.notStructuredElement.RelationManager
import becontent.html.gen.formElement.notStructuredElement.Section
import becontent.html.gen.formElement.notStructuredElement.Select
import becontent.html.gen.formElement.notStructuredElement.SelectFromReference
import becontent.html.gen.formElement.notStructuredElement.Text
import becontent.html.gen.formElement.notStructuredElement.Textarea
import becontent.html.gen.formElement.notStructuredElement.Year
%>

<%script type="becontent.Validation" name="generate" post="trim()"%>
<%if _id_model != null && _id_model != "" {%>
	<% generateDetailDiv("_id_model", _id_model ) %>
<%}else{%>
	<% generateDetailDiv("_id_model", "..." ) %>
<%}%>
	<% generateDetailDiv("condition", condition ) %>
	<%for (firstElement) {%>
		<%if current().name != null && current().name != "" {%>
			<% generateInnerDetailDiv("firstElement", current().eClass().name + ": " + current().name, current().generate() ) %>
		<%}else{%>
			<% generateInnerDetailDiv("firstElement", current().eClass().name + ": ...", current().generate() ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("message", message ) %>
	<%for (secondElement) {%>
		<%if current().name != null && current().name != "" {%>
			<% generateInnerDetailDiv("secondElement", current().eClass().name + ": " + current().name, current().generate() ) %>
		<%}else{%>
			<% generateInnerDetailDiv("secondElement", current().eClass().name + ": ...", current().generate() ) %>
		<%}%>
	<%}%>	
	
<%script type="becontent.Validation" name="Validation" file="<%cleaner(current().generateFilename())%>"%>
<%if _id_model != null && _id_model != "" {%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>
