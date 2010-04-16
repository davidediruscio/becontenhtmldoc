<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
import becontent.html.gen.beContentElement.definitionItem.EntityManagerPage
import becontent.html.gen.formElement.notStructuredElement.Text
%>


<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="generateText" post="trim()"%>
<%for (eAllContents("Text")) {%>
<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Index</title>
	</head>
	<body>
		EntityManagerPage	
		<br /><br />
		<%generateEntityManagerPage()%> 
		<br />
		Text
		<br /><br />
		<%generateText()%>
	</body>
</html>