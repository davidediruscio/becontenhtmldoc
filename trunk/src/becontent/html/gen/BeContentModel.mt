<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.beContentElement.definitionItem.EntityManagerPage
%>

<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
	<%for (eContents().filter("EntityManagerPage")) {%>
		<%generateIndexLink(current().fileName, current().generateFilename())%>
	<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
	<html>
	<head>
	<title>Index</title>
	</head>
	<body>
	EntityManagerPage<br />
	<br />
	<%generateEntityManagerPage()%>
	</html>