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
	
<%script type="becontent.ExtendedForm" name="generate" post="trim()"%>
	<%for (mainEntity) {%> 
		<% generateReferenceDetailDiv("Main Entity", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Class Name", className ) %>
	<% generateDetailDiv("Method", "TODO" ) %>
	<% generateDetailDiv("Description", description ) %>
	<%for (elements){%>
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>	
	<%for (customPager) {%> 
		<% generateReferenceDetailDiv("Custom Pager", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<%for (validations) {%> 
		<% generateReferenceDetailDiv("Validations", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	
<%script type="becontent.ExtendedForm" name="ExtendedForm" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>