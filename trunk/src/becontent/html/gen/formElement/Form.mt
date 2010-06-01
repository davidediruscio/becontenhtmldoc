<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.services.FileService
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
	
<%script type="becontent.Form" name="generate" post="trim()"%>
	<%for (customPager) {%> 
		<% generateReferenceDetailDiv("customPager", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<% generateDetailDiv("description", description ) %>
	<%for (elements){%>
		<% generateInnerDetailDiv("elements", current().eClass().name + ": " + current().name, current().generate() ) %>
	<%}%>
	<%for (mainEntity) {%> 
		<% generateReferenceDetailDiv("mainEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<% generateDetailDiv("method", method ) %>
	<% generateDetailDiv("name", name ) %>
	<%for (validations) {%> 
		<% generateReferenceDetailDiv("validations", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
	<%}%>
	<br />
	<br />
	<div style="float: left; background-color: #CCCCFF; width: 100%; border: 1px solid silver" >
 		<font size="+2">
		<b>Form Preview</b>
		</font>
	</div>
	<div class="detailDiv">
		<div id="becontent">
			<form name="" method="POST" enctype="multipart/form-data">
	  			<table border="0">
					<%for (elements){%>
						<%if (!current().eClass().name.equalsIgnoreCase("CustomPager") && !current().eClass().name.equalsIgnoreCase("Validations") && !current().eClass().name.equalsIgnoreCase("Section") && !current().eClass().name.equalsIgnoreCase("Hidden")){%>
							<tr>
								<td>
									<% current().label %>
								</td>
								<td>
									<% current().generateFormHTML() %>
								</td>
							</tr>
						<%}%>
					<%}%>
					</table>
			</form>
			<div class="closing" style="background: #E2F5FB url(<% current().getGeneratedFilesPath %>img/form-bar.png) no-repeat left;">
				<input type="button" value="Aggiungi">
			</div>
		</div>
	</div>
	
<%script type="becontent.Form" name="Form" file="<%cleaner(current().generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>