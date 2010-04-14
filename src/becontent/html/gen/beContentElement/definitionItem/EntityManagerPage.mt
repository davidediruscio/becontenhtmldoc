<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
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

<%script type="becontent.EntityManagerPage" name="generateFilename" post="trim()"%>
	<%current().eClass().name%>_<%fileName%>.html

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<% generateDetailDiv("Name", fileName ) %>
	<% generateDetailDiv("Skin", skin ) %>
	<%for (eContents().filter("Form")){%>
		<%for (elements){%>
			<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
		<%}%>
	<%}%>	
		
<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%current().generateFilename()%>"%>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>